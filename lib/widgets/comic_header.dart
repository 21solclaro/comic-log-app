import 'package:comic_log_app/models/comic.dart';
import 'package:flutter/material.dart';

class ComicHeader extends StatelessWidget {
  const ComicHeader({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      stretchModes: const <StretchMode>[
        StretchMode.zoomBackground,
        StretchMode.blurBackground,
      ],
      background: Padding(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      spreadRadius: 1,
                      blurRadius: 10.0,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                width: 140,
                height: 210,
                child: comic.imgUrl == ''
                    ? Container(
                        width: 140,
                        height: 210,
                        color: Colors.grey,
                      )
                    : Image(image: NetworkImage(comic.imgUrl)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comic.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < comic.author.length; i++) ...{
                          if (i > 0) ...{Text('・${comic.author[i]}')} else
                            Text('${comic.author[i]}')
                        }
                      ],
                    ),
                    Text('${comic.publisher}・${comic.startYear}'),
                    comic.serializeState.stateTag
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
