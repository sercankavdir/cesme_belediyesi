import 'package:flutter/material.dart';

import '../screens/new_detail_screen.dart';

class CardWidget extends StatelessWidget {
  final String id;
  final String news_title;
  final String news_imageUrl;
  final String news_subtitle;

  CardWidget({
    @required this.id,
    @required this.news_title,
    @required this.news_imageUrl,
    @required this.news_subtitle,
  });

  void selectNew(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      NewDetailScreen.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectNew(context),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      news_imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 10,
                      child: Container(
                        width: 300,
                        color: Colors.black54,
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 20,
                        ),
                        child: Text(
                          news_title,
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[Text(news_subtitle)],
                ),
              )
            ],
          )),
    );
  }
}
