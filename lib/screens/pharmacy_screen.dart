import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/pharmacy_widget.dart';

import '../models/pharmacy.dart';

class PharmacyScreen extends StatefulWidget {
  static const routeName = '/nobetcieczaneler';
  final List<Pharmacy> availableEczaneler;

  PharmacyScreen(this.availableEczaneler);

  @override
  State<PharmacyScreen> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  List<Pharmacy> displayedEczane;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    displayedEczane = widget.availableEczaneler.toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nöbetçi Eczaneler'),
      ),
      body: ListView.builder(
          itemBuilder: (ctx, index) {
            return PharmacyWidget(
              name: displayedEczane[index].name,
              phone_number: displayedEczane[index].phone_number,
              adress: displayedEczane[index].adress,
            );
          },
          itemCount: displayedEczane.length),
    );
  }
}
