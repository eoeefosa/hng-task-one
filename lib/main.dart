import 'package:flutter/material.dart';
import 'package:personal_details/src/webview/githubweb.dart';

import 'src/homepage/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Efosa Emmanuel Personal profile",
      routes: {
        '/': (context) => const MyHomePage(),
        '/githubpage': (context) => const MyGitHubWebView(),
      },
    );
  }
}

