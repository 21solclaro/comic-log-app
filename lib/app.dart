// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'constant/theme_data.dart';
import 'pages/start_page.dart';
import 'provider/theme_provider.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: ref.watch(themeModeProvider),
      home: const StartPage(),
    );
  }
}
