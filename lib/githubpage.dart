import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GithubPage extends StatefulWidget {
  const GithubPage({super.key});

  @override
  State<GithubPage> createState() => _GithubPageState();
}

class _GithubPageState extends State<GithubPage> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://github.com/Dwinny'));
  @override
  Widget build(BuildContext context) {
    final String url = 'https://github.com/Dwinny';
    return Scaffold(
      appBar: AppBar(
        title: Text('Github Profile'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
