import 'package:comic_log_app/models/book.dart';
import 'package:flutter/material.dart';

class BooksTab extends StatelessWidget {
  const BooksTab({Key? key, required this.books}) : super(key: key);

  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: books.length,
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Image(image: NetworkImage(books[index].imgUrl)),
            title: Text('${books[index].volume}巻'),
            trailing: books[index].bookReadState.stateTag,
          );
        }));
  }
}
