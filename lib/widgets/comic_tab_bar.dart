import 'package:flutter/material.dart';

class ComicTabBar extends StatelessWidget {
  const ComicTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
      child: TabBar(
        indicator: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.blue, width: 3)),
        ),
        labelColor: Colors.blue,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        unselectedLabelColor: Colors.blueGrey,
        tabs: <Tab>[
          Tab(text: 'About'),
          Tab(text: 'Book'),
          Tab(text: 'Chapter'),
          Tab(text: 'Related')
        ],
      ),
    );
  }
}
