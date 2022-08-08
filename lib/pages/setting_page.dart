import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      lightTheme: const SettingsThemeData(
          leadingIconsColor: Colors.white,
          settingsListBackground: Colors.white,
          settingsSectionBackground: Colors.grey),
      sections: [
        SettingsSection(
          title: const Text('Common'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: const Icon(Icons.language),
              title: const Text('Language'),
              value: const Text('English'),
            ),
            SettingsTile.switchTile(
              onToggle: (value) {},
              initialValue: true,
              leading: const Icon(Icons.dark_mode_outlined),
              title: const Text('Dark Theme'),
            ),
          ],
        ),
      ],
    );
  }
}
