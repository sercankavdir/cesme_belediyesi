import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final Icon iconName;
  final String routeName;

  HomeItem(this.title, this.iconName, this.routeName);

  void selectItem(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.fromSize(
      size: Size(100, 100),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(routeName);
        },
        splashColor: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            iconName,
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  toList() {}
}
