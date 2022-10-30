// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../provider/theme_provider.dart';

class ThemeSwitch extends ConsumerWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(isDarkThemeProvider);

    return ListTile(
        leading: const Icon(Icons.dark_mode),
        title: const Text('Dark Theme'),
        trailing: CupertinoSwitch(
          value: isDarkTheme,
          onChanged: (value) {
            if (value) {
              ref.read(themeModeProvider.notifier).state = ThemeMode.dark;
            } else {
              ref.read(themeModeProvider.notifier).state = ThemeMode.light;
            }
          },
        ));
  }
}
