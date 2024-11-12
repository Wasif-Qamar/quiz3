import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Example')),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('Item ${index + 1}'),
            subtitle: Text('Description of item ${index + 1}'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Item ${index + 1} selected')),
              );
            },
          );
        },
      ),
    );
  }
}