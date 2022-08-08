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
      child: SizedBox(
          height: 200,
          width: 100,
          child: Column(
            children: [
              Container(
                height: 90,
                width: 60,
                color: Colors.grey,
              ),
              Text(
                comic.title,
                style: const TextStyle(fontSize: 10),
                overflow: TextOverflow.ellipsis,
              )
            ],
          )),
    );
  }
}
