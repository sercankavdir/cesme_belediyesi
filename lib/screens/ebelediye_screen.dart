import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EbelediyeScreen extends StatefulWidget {
  @override
  State<EbelediyeScreen> createState() => _EbelediyeScreenState();
}

class _EbelediyeScreenState extends State<EbelediyeScreen> {
  WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://www.cesme.bel.tr/e-belediye',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
      ),
    );
  }
}
