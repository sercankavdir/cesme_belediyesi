import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/home_item.dart';
import '../dummy_data.dart' as constants;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    constants.homeScreenImageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0.0, 1.0),
                    child: SizedBox(
                      height: 10,
                      width: 10,
                      child: OverflowBox(
                        minWidth: 0.0,
                        maxWidth: MediaQuery.of(context).size.width,
                        minHeight: 0.0,
                        maxHeight: (MediaQuery.of(context).size.height / 4),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              width: double.infinity,
                              height: double.infinity,
                              child: Card(
                                color: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 15,
                                        left: 20,
                                        right: 20,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Text(
                                              'Çeşme',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                    color: Colors.black54,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          Center(
                                            child: Text(
                                              DateFormat.MMMMEEEEd()
                                                  .format(DateTime.now()),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                    color: Colors.black54,
                                                    fontSize: 16,
                                                  ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 50),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Güneşli',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption
                                                    .copyWith(
                                                      color: Colors.black54,
                                                      fontSize: 16,
                                                    ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                '24\u2103',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline3
                                                    .copyWith(
                                                      color: Colors.black54,
                                                    ),
                                              ),
                                              Text(
                                                'min: 12\u2103 / max: 29\u2103',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption
                                                    .copyWith(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            right: 40,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                        'https://icons-for-free.com/iconfiles/png/512/sun+sunny+weather+icon-1320196635525068067.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
            top: 150,
          )),
          Expanded(
            flex: 1,
            child: GridView(
              children: constants.DUMMY_HOME
                  .map((itemData) => HomeItem(
                      itemData.title, itemData.icon, itemData.routeName))
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 4 / 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              padding: const EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }
}
