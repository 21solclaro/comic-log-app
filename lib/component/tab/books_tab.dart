// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

// Project imports:
import '../../model/book/book.dart';
import '../../provider/book_provider.dart';

class BooksTab extends ConsumerWidget {
  const BooksTab({super.key});

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

class BookCard extends StatelessWidget {
  const BookCard({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Text('${book.volume}巻'),
        subtitle: Text(DateFormat('yyyy/MM/dd').format(book.publishedAt)),
        leading: Image(image: NetworkImage(book.imgUrl)),
        trailing: book.bookReadState.stateTag,
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: li.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text(li[index]),
                );
              }))
        ]);
  }
}

List li = ['a', 'b', 'c'];
