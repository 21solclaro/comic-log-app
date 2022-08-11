import 'package:comic_log_app/pages/root_page.dart';
import 'package:comic_log_app/providers/theme_provider.dart';
import 'package:comic_log_app/constants/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: ref.watch(themeModeProvider),
      home: const RootPage(),
    );
  }
}
