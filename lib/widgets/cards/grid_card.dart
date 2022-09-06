import '../../constants/color.dart';
import '../../models/comic.dart';
import '../../pages/comic_page.dart';
import '../../providers/comic_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GridCard extends ConsumerWidget {
  const GridCard({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(cidProvider.notifier).state = comic.cid;
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
