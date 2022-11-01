// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../constant/color.dart';
import '../../model/comic/comic.dart';
import '../../pages/comic_page.dart';
import '../../provider/comic_provider.dart';

class ListCard extends ConsumerWidget {
  const ListCard({super.key, required this.comic});

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
                        color: AppColor.iconGrey,
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
                            style: const TextStyle(color: AppColor.iconGrey),
                          )
                        } else
                          Text(
                            comic.author[i],
                            style: const TextStyle(color: AppColor.iconGrey),
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
