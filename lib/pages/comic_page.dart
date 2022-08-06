import 'package:comic_log_app/models/comic.dart';
import 'package:comic_log_app/widgets/tabs/about_tab.dart';
import 'package:comic_log_app/widgets/tabs/books_tab.dart';
import 'package:comic_log_app/widgets/tabs/chapters_tab.dart';
import 'package:comic_log_app/widgets/tabs/related_works_tab.dart';
import 'package:flutter/material.dart';

class ComicPage extends StatelessWidget {
  const ComicPage({Key? key, required this.comic}) : super(key: key);
  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: _tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        comic.imgUrl == ''
                            ? Container(
                                height: 140,
                                width: 100,
                                color: Colors.grey,
                              )
                            : Image(image: NetworkImage(comic.imgUrl)),
                        const SizedBox(width: 20),
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
                      ],
                    ),
                  ),
                ),
                bottom: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(25.0)),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: '詳細',
                    ),
                    Tab(
                      text: '巻',
                    ),
                    Tab(
                      text: '話',
                    ),
                    Tab(
                      text: '関連作品',
                    )
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(children: _tabs),
        ),
      ),
    );
  }
}

final _tabs = [
  const AboutTab(),
  const BooksTab(),
  const ChaptersTab(),
  const RelatedWorksTab()
];
