import 'package:flutter/material.dart';

import '../utils/screenutils.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Profile"),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: ScreenUtil.screenWidth * 0.6,
              height: ScreenUtil.screenWidth * 0.6,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://ca.slack-edge.com/T05FFAA91JP-U05RABKBSAW-450e7758538c-512',
                ),
              ),
            ),
            const SizedBox(height: 8),
            const ListTile(
              title: Text(
                'Efosa Emmanuel Osemwegie',
                style: TextStyle(fontSize: 20, fontFamily: "Roboto"),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("Open Efosa's GitHub"),
              onPressed: () {
                Navigator.of(context).pushNamed('/githubpage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
