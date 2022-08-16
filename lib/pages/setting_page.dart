import 'package:comic_log_app/constants/color.dart';
import 'package:comic_log_app/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(isDarkThemeProvider);

    return SettingsList(
      contentPadding: const EdgeInsets.only(top: 60),
      sections: [
        CustomSettingsSection(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Container(
                decoration: BoxDecoration(
                    color: isDarkTheme ? dForegroundColor : lForegroundColor,
                    borderRadius: BorderRadius.circular(14)),
                height: 100,
                child: Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        maxRadius: 36,
                      ),
                    ),
                    Text(
                      'Hello World',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
        ),
        SettingsSection(
          title: const Text('Profile'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: const Icon(Icons.person),
              title: const Text('User Name'),
            ),
            SettingsTile.navigation(
              leading: const Icon(Icons.email),
              title: const Text('E-mail'),
            ),
            SettingsTile.navigation(
              leading: const Icon(Icons.password),
              title: const Text('Password'),
            ),
          ],
        ),
        SettingsSection(
          title: const Text('Application'),
          tiles: [
            SettingsTile.navigation(
              leading: const Icon(Icons.language),
              title: const Text('Language'),
              value: const Text('English'),
            ),
            SettingsTile.switchTile(
              initialValue: isDarkTheme,
              onToggle: (value) {
                if (value) {
                  ref.read(themeModeProvider.notifier).state = ThemeMode.dark;
                } else {
                  ref.read(themeModeProvider.notifier).state = ThemeMode.light;
                }
              },
              title: const Text('Dark Theme'),
              leading: const Icon(Icons.dark_mode),
            )
          ],
        ),
        SettingsSection(
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: const Icon(Icons.logout),
              title: const Text('Sign Out'),
            ),
          ],
        ),
      ],
    );
  }
}
