import 'package:comic_log_app/models/comic.dart';
import 'package:flutter/material.dart';

class ChaptersTab extends StatelessWidget {
  const ChaptersTab({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: comic.chapters.length,
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Text('${comic.chapters[index].volume}話'),
            title: Text(comic.chapters[index].chapterTitle),
          );
        }));
  }
}
