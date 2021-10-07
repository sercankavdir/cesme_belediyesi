import 'package:flutter/material.dart';

import '../models/new.dart';
import '../widgets/card_widget.dart';

class NewsScreen extends StatefulWidget {
  static const routeName = '/haberler';
  final List<New> availableNews;

  NewsScreen(this.availableNews);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  String newTitle;
  List<New> displayedNews;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    displayedNews = widget.availableNews.toList();
    _loadedInitData = true;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Haberler'),
      ),
      body: ListView.builder(
          itemBuilder: (ctx, index) {
            return CardWidget(
                id: displayedNews[index].id,
                news_title: displayedNews[index].news_title,
                news_imageUrl: displayedNews[index].news_imageUrl,
                news_subtitle: displayedNews[index].news_subtitle);
          },
          itemCount: displayedNews.length),
    );
  }
}
