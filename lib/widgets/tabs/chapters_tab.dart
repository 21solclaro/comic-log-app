import 'package:comic_log_app/models/chapter.dart';
import 'package:comic_log_app/providers/chapter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChaptersTab extends ConsumerWidget {
  const ChaptersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapterStream = ref.watch(chapterStreamProvider);
    return chapterStream.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => Text('Error: $error'),
        data: (chapters) {
          return ListView.builder(
              padding: const EdgeInsets.fromLTRB(4, 20, 4, 10),
              itemCount: chapters.length,
              itemBuilder: ((context, index) {
                return ChapterCard(chapter: chapters[index]);
              }));
        });
  }
}

class ChapterCard extends ConsumerWidget {
  const ChapterCard({Key? key, required this.chapter}) : super(key: key);

  final Chapter chapter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: Text('${chapter.volume}話'),
      title: Text(chapter.chapterTitle),
      trailing: chapter.chapterReadState.stateTag,
    );
  }
}
