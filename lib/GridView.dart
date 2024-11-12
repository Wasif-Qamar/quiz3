import 'package:flutter/material.dart';

class GridviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(Icons.abc, size: 40, color: Colors.white),
                  Text(
                    'Item ${index + 1}',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}