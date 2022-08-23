import 'package:comic_log_app/models/comic.dart';
import 'package:comic_log_app/widgets/comic_header.dart';
import 'package:comic_log_app/widgets/comic_tab_bar.dart';
import 'package:comic_log_app/widgets/tabs/about_tab.dart';
import 'package:comic_log_app/widgets/tabs/books_tab.dart';
import 'package:comic_log_app/widgets/tabs/chapters_tab.dart';
import 'package:comic_log_app/widgets/tabs/related_works_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
                    preferredSize: Size.fromHeight(0), child: ComicTabBar()),
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
