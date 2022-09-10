// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../component/comic_header.dart';
import '../component/tab/about_tab.dart';
import '../component/tab/books_tab.dart';
import '../component/tab/chapters_tab.dart';
import '../component/tab/related_works_tab.dart';
import '../model/comic/comic.dart';

class ComicPage extends ConsumerWidget {
  const ComicPage({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                stretch: true,
                automaticallyImplyLeading: false,
                pinned: true,
                expandedHeight: 300,
                flexibleSpace: ComicHeader(comic: comic),
                bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(0),
                    child: SizedBox(
                      height: 40,
                      child: TabBar(
                        tabs: <Tab>[
                          Tab(text: 'About'),
                          Tab(text: 'Book'),
                          Tab(text: 'Chapter'),
                          Tab(text: 'Related')
                        ],
                      ),
                    )),
              ),
            ];
          },
          body: TabBarView(children: [
            AboutTab(comic: comic),
            const BooksTab(),
            const ChaptersTab(),
            const RelatedWorksTab()
          ]),
        ),
      ),
    );
  }
}
