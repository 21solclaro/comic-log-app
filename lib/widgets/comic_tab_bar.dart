import 'package:flutter/material.dart';

class ComicTabBar extends StatelessWidget {
  const ComicTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
      child: TabBar(
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
