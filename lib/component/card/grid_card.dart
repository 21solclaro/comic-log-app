// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../constant/color.dart';
import '../../model/comic/comic.dart';
import '../../pages/comic_page.dart';
import '../../provider/comic_provider.dart';

class GridCard extends ConsumerWidget {
  const GridCard({super.key, required this.comic});

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
                        color: AppColor.iconGrey,
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
