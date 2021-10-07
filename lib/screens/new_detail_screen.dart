import 'package:flutter/material.dart';

import '../dummy_data.dart';

class NewDetailScreen extends StatelessWidget {
  static const routeName = '/new-detail';
  @override
  Widget build(BuildContext context) {
    final newId = ModalRoute.of(context).settings.arguments as String;
    final selectedNew = DUMMY_NEWS.firstWhere((news) => news.id == newId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedNew.news_title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedNew.news_imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 15,
              ),
              child: Text(selectedNew.news_main),
            )
          ],
        ),
      ),
    );
  }
}
