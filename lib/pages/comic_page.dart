import 'package:comic_log_app/models/comic.dart';
import 'package:flutter/material.dart';

class ComicPage extends StatelessWidget {
  const ComicPage({Key? key, required this.comic}) : super(key: key);
  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(comic.title)),
    );
  }
}
