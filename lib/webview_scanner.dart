import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScanner extends StatelessWidget {
  final String text;
  const WebViewScanner({Key? key, required this.text}) : super(key: key);

  void initState() {
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'WebView Flutter'
        ),
      ),
      body: WebView(
        initialUrl: text,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
