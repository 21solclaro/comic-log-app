import 'package:comic_log_app/pages/home_page.dart';
import 'package:comic_log_app/pages/profile_page.dart';
import 'package:comic_log_app/pages/search_page.dart';
import 'package:comic_log_app/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum PageType { home, search, profile, setting }

final pageTypeProvider = StateProvider<PageType>((ref) => PageType.home);

class RootPage extends ConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageType = ref.watch(pageTypeProvider);
    final pages = [
      const HomePage(),
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
            ref.read(pageTypeProvider.notifier).state =
                PageType.values[selectIndex];
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'home'),
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
