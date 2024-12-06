
import 'package:flutter/material.dart';

class ListViewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.label),
          title: Text('Item ${index + 1}'),
          subtitle: Text('Subtitle ${index + 1}'),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Tapped on Item ${index + 1}')),
            );
          },
        );
      },
    );
  }
}
