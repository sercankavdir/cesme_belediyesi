import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class PharmacyWidget extends StatelessWidget {
  final String name;
  final String phone_number;
  final String adress;

  PharmacyWidget({
    @required this.name,
    @required this.phone_number,
    @required this.adress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(name,
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
                  Text(phone_number),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(adress),
                    ],
                  ),
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              buttonPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              children: [
                RaisedButton(
                  child: Text(
                    "Ara",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  textColor: Colors.white,
                  color: Colors.lightBlueAccent,
                  onPressed: () => launch('tel://{$phone_number}'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
