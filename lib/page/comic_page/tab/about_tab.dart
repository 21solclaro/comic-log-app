// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../model/comic/comic.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key, required this.comic});

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
        ListTile(
          title: Text(
            '${comic.startYear}年〜${comic.serializeState == SerializeState.finished ? comic.endYear : DateTime.now().year}年',
            style: const TextStyle(fontSize: 14),
          ),
          leading: const Icon(Icons.timeline),
        ),
        const Divider(
          indent: 16,
          endIndent: 16,
          thickness: 1,
        )
      ],
    );
  }
}
