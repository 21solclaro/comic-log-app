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
      background: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 60),
          child: Container(
            // color: Colors.green,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.blue,
                  width: 160,
                  height: 237,
                  child: comic.imgUrl == ''
                      ? Container(
                          height: 140,
                          width: 100,
                          color: Colors.grey,
                        )
                      : Image(image: NetworkImage(comic.imgUrl)),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          comic.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < comic.author.length; i++) ...{
                          if (i > 0) ...{Text('・${comic.author[i]}')} else
                            Text('${comic.author[i]}')
                        }
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
