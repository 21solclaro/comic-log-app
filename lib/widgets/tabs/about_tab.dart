import 'package:comic_log_app/models/comic.dart';
import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            children: [
              for (int i = 0; i < comic.author.length; i++) ...{
                if (i > 0) ...{
                  Text('・${comic.author[i]}',
                      style: const TextStyle(fontSize: 14))
                } else
                  Text(comic.author[i], style: const TextStyle(fontSize: 14))
              }
            ],
          ),
          leading: const Icon(Icons.people_alt_outlined),
        ),
        ListTile(
          title: Text(
            comic.publisher,
            style: const TextStyle(fontSize: 14),
          ),
          leading: const Icon(Icons.business_outlined),
        ),
        ListTile(
          title: Text(
            comic.magazine,
            style: const TextStyle(fontSize: 14),
          ),
          leading: const Icon(Icons.newspaper),
        ),
        // ListTile(
        //   title: Text(
        //     '${comic.startYear}年〜${comic.serializeState == SerializeState.finished ? comic.endYear : DateTime.now().year}年',
        //     style: const TextStyle(fontSize: 14),
        //   ),
        //   leading: const Icon(Icons.timeline),
        // ),
        // ListTile(
        //   title: Text(
        //     '${comic.books!.length}巻・${comic.chapters!.length}話',
        //     style: const TextStyle(fontSize: 14),
        //   ),
        //   leading: const Icon(Icons.menu_book),
        // ),
        const Divider(
          indent: 16,
          endIndent: 16,
          thickness: 1,
        )
      ],
    );
  }
}
