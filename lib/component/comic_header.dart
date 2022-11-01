// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// Project imports:
import '../constant/color.dart';
import '../model/comic/comic.dart';

class ComicHeader extends StatelessWidget {
  const ComicHeader({super.key, required this.comic});

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
                        color: AppColor.iconGrey,
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
                        comic.serializeState.stateTag,
                        RatingBar.builder(
                            initialRating: comic.rating.toDouble(),
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemBuilder: (context, _) => const Icon(Icons.star,
                                color: Colors.yellowAccent),
                            onRatingUpdate: (rate) {}),
                      ],
                    ),
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
