import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HtmlView extends StatefulWidget {
  String url;

  HtmlView(this.url);

  @override
  _HtmlViewState createState() => _HtmlViewState();
}

class _HtmlViewState extends State<HtmlView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: WebView(

        initialUrl: this.widget.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
