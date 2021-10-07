import 'package:flutter/material.dart';

class New {
  final String id;
  final String news_title;
  final String news_imageUrl;
  final String news_subtitle;
  final String news_main;

  const New({
    @required this.id,
    @required this.news_title,
    @required this.news_imageUrl,
    @required this.news_subtitle,
    @required this.news_main,
  });
}
