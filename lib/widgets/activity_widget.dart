import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  final String name;
  final String date;
  final String hour;
  final String adress;
  final String imageUrl;

  ActivityWidget({
    @required this.name,
    @required this.date,
    @required this.hour,
    @required this.adress,
    @required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                    imageUrl,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Tarih: ${date}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      )),
                  Divider(
                    thickness: 2,
                    color: Colors.black45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                  ),
                  Text(
                    'Saat: ${hour}',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Adres: ${adress}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
