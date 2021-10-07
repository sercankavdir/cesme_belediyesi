import 'package:flutter/material.dart';

class Activity {
  final String name;
  final String date;
  final String hour;
  final String adress;
  final String imageUrl;

  const Activity({
    @required this.name,
    @required this.date,
    @required this.hour,
    @required this.adress,
    @required this.imageUrl,
  });
}
