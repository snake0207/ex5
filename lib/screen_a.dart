import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextButton(
              onPressed: () {
                debugPrint('menu-a clicked..');
              },
              child: const Text('menu-a')),
          TextButton(
              onPressed: () {
                debugPrint('menu-b clicked..');
              },
              child: const Text('menu-b')),
        ],
      ),
      appBar: AppBar(
        title: const Text('Screen A'),
      ),
      body: Column(
        children: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'b');
              },
              child: const Text('go to screen B..')),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'c');
              },
              child: const Text('go to screen C..')),
        ],
      ),
    );
  }
}
