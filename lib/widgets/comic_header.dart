import 'package:comic_log_app/constants/color.dart';
import 'package:comic_log_app/models/comic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ComicHeader extends StatelessWidget {
  const ComicHeader({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    // double per = comic.books
    //         .where((value) => value.bookReadState == BookReadState.finished)
    //         .toList()
    //         .length /
    //     comic.books.length *
    //     100;

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
                        color: iconGrey,
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
                    comic.serializeState.stateTag,
                    RatingBar.builder(
                        initialRating: comic.rating.toDouble(),
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 20,
                        itemBuilder: (context, _) =>
                            const Icon(Icons.star, color: Colors.yellowAccent),
                        onRatingUpdate: (rate) {}),
                    LinearPercentIndicator(
                      barRadius: const Radius.circular(10),
                      width: 150,
                      lineHeight: 14,
                      percent: 0.5,
                      trailing: const Text('50%'),
                      // percent: per / 100,
                      // trailing: Text(
                      //   '${per.round()}%',
                      //   style: const TextStyle(fontSize: 12.0),
                      // ),
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
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
