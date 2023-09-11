// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyGitHubWebView extends StatefulWidget {
  const MyGitHubWebView({super.key});

  @override
  State<MyGitHubWebView> createState() => GithubWebViewState();
}

class GithubWebViewState extends State<MyGitHubWebView> {
  late final WebViewController controller;
  double _loadingProgress = 0;

  void updateProgress(int loadingProgress) {
    setState(() {
      _loadingProgress = loadingProgress / 100;
    });
  }

  @override
  void initState() {
    super.initState();

    // #docregion webview_controller
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
            updateProgress(progress);
          },
        ),
      )
      ..loadRequest(Uri.parse('https://github.com/eoeefosa'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(alignment: AlignmentDirectional.topStart, children: [
          WebViewWidget(controller: controller),
          _loadingProgress < 1.0
              ? LinearProgressIndicator(
                  value: _loadingProgress,
                  color: Colors.black,
                  backgroundColor: Colors.white,
                )
              : Container(),
        ]),
      ),
    );
  }
}
