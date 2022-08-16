import 'package:comic_log_app/constants/color.dart';
import 'package:comic_log_app/models/comic.dart';
import 'package:comic_log_app/pages/comic_page.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  const GridCard({Key? key, required this.comic}) : super(key: key);

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 2),
              child: SizedBox(
                height: 105,
                width: 70,
                child: comic.imgUrl == ''
                    ? Container(
                        color: iconGrey,
                      )
                    : Image(image: NetworkImage(comic.imgUrl)),
              ),
            ),
            Text(
              comic.title,
              style: const TextStyle(fontSize: 10),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
