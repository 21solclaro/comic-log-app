import 'package:comic_log_app/constants/color.dart';
import 'package:comic_log_app/models/comic.dart';
import 'package:comic_log_app/pages/comic_page.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return ComicPage(comic: comic);
          }),
        );
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(4, 8, 4, 0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 16, 8),
              child: SizedBox(
                height: 60,
                width: 40,
                child: comic.imgUrl == ''
                    ? Container(
                        color: iconGrey,
                      )
                    : Image(image: NetworkImage(comic.imgUrl)),
              ),
            ),
            SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comic.title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < comic.author.length; i++) ...{
                        if (i > 0) ...{
                          Text(
                            '・${comic.author[i]}',
                            style: TextStyle(color: iconGrey),
                          )
                        } else
                          Text(
                            comic.author[i],
                            style: TextStyle(color: iconGrey),
                          )
                      }
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
