import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:comic_log_app/models/book.dart';
import 'package:comic_log_app/providers/book_provider.dart';
import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.fromLTRB(4, 20, 4, 10),
              itemCount: books.length,
              itemBuilder: ((context, index) {
                return BookCard(book: books[index]);
              }));
        });
  }
}

class BookCard extends ConsumerWidget {
  const BookCard({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: Image(image: NetworkImage(book.imgUrl)),
      title: Text('${book.volume}巻'),
      subtitle: Text(DateFormat('yyyy/MM/dd').format(book.publishedAt)),
      trailing: book.bookReadState.stateTag,
    );
  }
}
