// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// Project imports:
import '../../model/chapter/chapter.dart';
import '../../provider/chapter_provider.dart';

class ChaptersTab extends ConsumerWidget {
  const ChaptersTab({super.key});

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

class ChapterCard extends StatelessWidget {
  const ChapterCard({Key? key, required this.chapter}) : super(key: key);

  final Chapter chapter;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: 300,
          ),
        );
      },
      child: ListTile(
        leading: Text('${chapter.volume}話'),
        title: Text(chapter.chapterTitle),
        trailing: chapter.chapterReadState.stateTag,
      ),
    );
  }
}
