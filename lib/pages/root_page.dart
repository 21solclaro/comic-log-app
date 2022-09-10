// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:comic_log_app/pages/collection_page.dart';
import '../provider/page_provider.dart';
import 'profile_page.dart';
import 'search_page.dart';
import 'setting_page.dart';

class RootPage extends ConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageType = ref.watch(pageProvider);
    final pages = [
      const CollectionPage(),
      const SearchPage(),
      const ProfilePage(),
      const SettingPage(),
    ];
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: pages[pageType.index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageType.index,
          type: BottomNavigationBarType.fixed,
          onTap: (int selectIndex) {
            ref.read(pageProvider.notifier).state =
                PageType.values[selectIndex];
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.collections_bookmark_outlined),
                label: 'collection'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'settings'),
          ],
        ),
      ),
    );
  }
}
