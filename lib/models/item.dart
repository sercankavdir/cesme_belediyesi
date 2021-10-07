import 'package:flutter/material.dart';

class Item {
  final String title;
  final Icon icon;
  final String routeName;

  const Item({
    @required this.title,
    @required this.icon,
    this.routeName = '/',
  });
}
