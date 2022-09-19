// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';

// Project imports:
import '../constant/color.dart';
import '../provider/theme_provider.dart';
import '../provider/user_provider.dart';
import 'user_edit_page.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(isDarkThemeProvider);
    final user = ref.watch(userStateNotifierProvider);

    return SettingsList(
      lightTheme: const SettingsThemeData(
        leadingIconsColor: AppColor.iconGrey,
        trailingTextColor: AppColor.iconGrey,
      ),
      darkTheme: const SettingsThemeData(
        leadingIconsColor: AppColor.iconGrey,
        trailingTextColor: AppColor.iconGrey,
      ),
      contentPadding: const EdgeInsets.only(top: 60),
      sections: [
        CustomSettingsSection(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Container(
                decoration: BoxDecoration(
                    color: isDarkTheme
                        ? AppColor.dForegroundColor
                        : AppColor.lForegroundColor,
                    borderRadius: BorderRadius.circular(14)),
                height: 100,
                child: Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 16, right: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        maxRadius: 36,
                      ),
                    ),
                    Text(
                      user?.username != null ? user!.username : 'hello',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )),
        ),
        SettingsSection(
          title: const Text('Profile'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              onPressed: (context) => Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const UserEditPage())),
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
              activeSwitchColor: AppColor.dMainColor,
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
              onPressed: (context) {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text('Sign out?'),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text("Cancel"),
                          onPressed: () => Navigator.pop(context),
                        ),
                        CupertinoDialogAction(
                          child: const Text("OK"),
                          onPressed: () {
                            ref
                                .read(userStateNotifierProvider.notifier)
                                .signOut(context);
                          },
                        )
                      ],
                    );
                  },
                );
              },
              leading: const Icon(Icons.logout),
              title: const Text('Sign Out'),
            ),
          ],
        ),
      ],
    );
  }
}
