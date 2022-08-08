import 'package:comic_log_app/models/chapter.dart';
import 'package:flutter/material.dart';

class ChaptersTab extends StatelessWidget {
  const ChaptersTab({Key? key, required this.chapters}) : super(key: key);

  final List<Chapter> chapters;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chapters.length,
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Text('${chapters[index].volume}話'),
            title: Text(chapters[index].chapterTitle),
            trailing: chapters[index].chapterReadState.stateTag,
          );
        }));
  }
}
