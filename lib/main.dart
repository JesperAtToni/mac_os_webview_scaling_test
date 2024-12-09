import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: ScaledWebViewTest(),
  ));
}

class ScaledWebViewTest extends StatelessWidget {
  const ScaledWebViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaled WebView Gesture Test')),
      body: Transform.scale(
        scale: 0.9,
        child: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..loadRequest(
                Uri.parse('https://codepen.io/BananaCoding/pen/mdrGjpL')),
        ),
      ),
    );
  }
}
