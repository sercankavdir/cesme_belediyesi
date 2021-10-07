import 'package:flutter/material.dart';

import '../widgets/activity_widget.dart';
import '../models/activity.dart';

class ActivitiesScreen extends StatefulWidget {
  static const routeName = '/etkinlikler';
  final List<Activity> availableActivities;

  ActivitiesScreen(this.availableActivities);

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  String newTitle;
  List<Activity> displayedActivities;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    displayedActivities = widget.availableActivities.toList();
    _loadedInitData = true;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etkinlikler'),
      ),
      body: ListView.builder(
          itemBuilder: (ctx, index) {
            return ActivityWidget(
              name: displayedActivities[index].name,
              date: displayedActivities[index].date,
              hour: displayedActivities[index].hour,
              adress: displayedActivities[index].adress,
              imageUrl: displayedActivities[index].imageUrl,
            );
          },
          itemCount: displayedActivities.length),
    );
  }
}
