import 'package:comic_log_app/models/book.dart';
import 'package:comic_log_app/providers/book_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BooksTab extends ConsumerWidget {
  const BooksTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookStream = ref.watch(bookStreamProvider);
    return bookStream.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => Text('Error: $error'),
        data: (books) {
          return ListView.builder(
              itemCount: books.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Image(image: NetworkImage(books[index].imgUrl)),
                  title: Text('${books[index].volume}巻'),
                  trailing: books[index].bookReadState.stateTag,
                );
              }));
        });
  }
}
