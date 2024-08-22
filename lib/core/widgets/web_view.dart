import 'dart:async';

import 'package:flutter/material.dart';
import 'package:i_shop/core/const/app_assets.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/loading_dialog.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;

  const WebViewPage({super.key, required this.url});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;

  void _showLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const LoadingDialog(),
    );
  }

  @override
  void initState() {
    super.initState();

    // Initialize the WebViewController
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            _showLoadingDialog();
          },
          onPageFinished: (String url) {
            Future.delayed(Duration(seconds: 1)).then((_) {
              Navigator.pop(context);
            });
          },
          onWebResourceError: (WebResourceError error) {
            // Handle errors
          },
          onNavigationRequest: (NavigationRequest request) {
            // Block navigation to specific URLs if needed
            if (request.url.startsWith(widget.url)) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url)); // Load the initial URL
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Image.asset(
          AppAssets.logoImage,
          height: 100,
        ),
        backgroundColor: AppColors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
