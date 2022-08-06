import 'package:comic_log_app/models/comic.dart';
import 'package:flutter/material.dart';

class BooksTab extends StatelessWidget {
  const BooksTab({Key? key, required this.comic}) : super(key: key);
  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: comic.books.length,
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Image(image: NetworkImage(comic.books[index].imgUrl)),
            title: Text('${comic.books[index].volume}巻'),
          );
        }));
  }
}
