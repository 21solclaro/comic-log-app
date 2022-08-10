import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      contentPadding: const EdgeInsets.only(top: 50),
      lightTheme: const SettingsThemeData(
        settingsListBackground: Color(0xFFEFEFF4),
      ),
      sections: [
        CustomSettingsSection(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                height: 100,
                child: Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 20),
                      child: CircleAvatar(
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
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: const Icon(Icons.language),
              title: const Text('Language'),
              value: const Text('English'),
            ),
            SettingsTile.switchTile(
              onToggle: (value) {},
              initialValue: false,
              leading: const Icon(Icons.dark_mode),
              title: const Text('Dark Theme'),
            ),
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
