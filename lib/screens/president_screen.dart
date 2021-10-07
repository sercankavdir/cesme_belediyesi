import 'package:flutter/material.dart';
import '../dummy_data.dart' as constants;

class PresidentScreen extends StatelessWidget {
  static const routeName = '/baskan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baskan'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              constants.presidentImageUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              constants.presidentText,
            ),
          )
        ],
      )),
    );
  }
}
