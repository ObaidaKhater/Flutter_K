import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomItemGamePage extends StatefulWidget {
  String url;

  CustomItemGamePage({this.url});

  @override
  _CustomItemGamePageState createState() => _CustomItemGamePageState();
}

class _CustomItemGamePageState extends State<CustomItemGamePage> {
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: widget.url,
      ),
    );
  }
}
