import 'package:comic_log_app/models/comic.dart';
import 'package:comic_log_app/widgets/comic_header.dart';
import 'package:comic_log_app/widgets/comic_tab_bar.dart';
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
                backgroundColor: Colors.white,
                flexibleSpace: ComicHeader(comic: comic),
                bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(0), child: ComicTabBar()),
              ),
            ];
          },
          body: TabBarView(children: [
            const AboutTab(),
            BooksTab(
              comic: comic,
            ),
            ChaptersTab(
              comic: comic,
            ),
            const RelatedWorksTab()
          ]),
        ),
      ),
    );
  }
}
