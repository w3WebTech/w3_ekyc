library w3_ekyc;
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPlugin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Hardcode the URL here
    final String _url = 'https://gkyc.gwcindia.in/client'; // Replace with your desired URL

    // Initialize the WebViewController
    final WebViewController _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(_url));

    return Scaffold(
      body: WebViewWidget(controller: _controller),
    );
  }
}