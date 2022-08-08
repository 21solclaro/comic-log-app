import 'package:comic_log_app/models/comic.dart';
import 'package:comic_log_app/pages/comic_page.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return ComicPage(comic: comic);
          }),
        );
      },
      title: Text(comic.title),
      subtitle: Row(
        children: [
          for (int i = 0; i < comic.author.length; i++) ...{
            if (i > 0) ...{Text('・${comic.author[i]}')} else
              Text('${comic.author[i]}')
          }
        ],
      ),
      leading: comic.imgUrl == ''
          ? Container(
              height: 60,
              width: 40,
              color: Colors.grey,
            )
          : Image(image: NetworkImage(comic.imgUrl)),
    );
  }
}
