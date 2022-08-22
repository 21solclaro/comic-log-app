import 'package:comic_log_app/models/chapter.dart';
import 'package:comic_log_app/providers/chapter_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
              itemCount: chapters.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Text('${chapters[index].volume}話'),
                  title: Text(chapters[index].chapterTitle),
                  trailing: chapters[index].chapterReadState.stateTag,
                );
              }));
        });
  }
}
