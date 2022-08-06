import 'package:flutter/material.dart';

class ComicTabBar extends StatelessWidget {
  const ComicTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: 40,
      child: TabBar(
        indicator: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.blue, width: 3)),
        ),
        labelColor: Colors.blue,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(
            child: Text(
              'About',
            ),
          ),
          Tab(
            text: 'Book',
          ),
          Tab(
            text: 'Chapter',
          ),
          Tab(
            text: 'Relation',
          )
        ],
      ),
    );
  }
}
