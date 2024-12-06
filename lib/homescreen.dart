import 'package:flutter/material.dart';
import 'gridview.dart';
import 'listview.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'ListView'),
              Tab(icon: Icon(Icons.grid_on), text: 'GridView'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListViewTab(),
             GridViewTab(),
          ],
        ),
      ),
    );
  }
}

