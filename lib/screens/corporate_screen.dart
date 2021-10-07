import 'package:flutter/material.dart';

import '../dummy_data.dart' as constants;

class CorporateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Misyon',
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
                  Text(constants.mission_text),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Vizyon',
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
                  Text(constants.vision_text),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
