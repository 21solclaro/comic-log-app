// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../component/card/grid_card.dart';
import '../component/card/list_card.dart';
import '../constant/color.dart';
import '../provider/collection_view_provider.dart';
import '../provider/comic_provider.dart';

class CollectionPage extends ConsumerWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final comicStream = ref.watch(comicStreamProvider);
    final collectionViewType = ref.watch(collectionViewProvider);

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              color: collectionViewType == CollectionViewType.list
                  ? ThemeData().appBarTheme.actionsIconTheme?.color
                  : AppColor.iconGrey,
              icon: const Icon(Icons.list),
              onPressed: () {
                ref.read(collectionViewProvider.notifier).state =
                    CollectionViewType.list;
              },
            ),
            IconButton(
              color: collectionViewType == CollectionViewType.grid
                  ? AppColor.iconGrey
                  : ThemeData().appBarTheme.actionsIconTheme?.color,
              icon: const Icon(Icons.grid_view),
              onPressed: () {
                ref.read(collectionViewProvider.notifier).state =
                    CollectionViewType.grid;
              },
            ),
          ],
        ),
        body: comicStream.when(
            loading: () => const CircularProgressIndicator(),
            error: (error, stack) => Text('Error: $error'),
            data: (comics) {
              return collectionViewType == CollectionViewType.list
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
