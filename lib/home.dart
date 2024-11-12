
import 'package:flutter/material.dart';
import 'GridView.dart';

import 'listview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListviewPage()),
                );
              },
              child: const Text('Listview'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridviewPage()),
                );
              },
              child: const Text('Gridview'),
            ),
          ],
        ),
      ),
    );
  }
}
