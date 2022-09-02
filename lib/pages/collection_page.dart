import 'package:comic_log_app/constants/color.dart';
import 'package:comic_log_app/providers/comic_provider.dart';
import 'package:comic_log_app/widgets/cards/grid_card.dart';
import 'package:comic_log_app/widgets/cards/list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isListViewProvider = StateProvider<bool>((ref) => true);

class CollectionPage extends ConsumerWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final comicStream = ref.watch(comicStreamProvider);
    final isListView = ref.watch(isListViewProvider);

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              color: isListView
                  ? ThemeData().appBarTheme.actionsIconTheme?.color
                  : iconGrey,
              icon: const Icon(Icons.list),
              onPressed: () {
                ref.read(isListViewProvider.notifier).state = true;
              },
            ),
            IconButton(
              color: isListView
                  ? iconGrey
                  : ThemeData().appBarTheme.actionsIconTheme?.color,
              icon: const Icon(Icons.grid_view),
              onPressed: () {
                ref.read(isListViewProvider.notifier).state = false;
              },
            ),
          ],
        ),
        body: comicStream.when(
            loading: () => const CircularProgressIndicator(),
            error: (error, stack) => Text('Error: $error'),
            data: (comics) {
              return isListView
                  ? ListView.builder(
                      itemCount: comics.length,
                      itemBuilder: ((context, index) {
                        return ListCard(comic: comics[index]);
                      }))
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4, childAspectRatio: 2 / 3),
                      itemCount: comics.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GridCard(comic: comics[index]);
                      });
            }));
  }
}
