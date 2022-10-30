// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../component/button/sign_out_button.dart';
import '../component/button/theme_switch.dart';
import 'user_edit_page.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Row(
              children: const <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 48,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'HELLO',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('User Name'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const UserEditPage())),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.password),
            title: Text('Password'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'System',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(
            thickness: 2,
          ),
          const ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ThemeSwitch(),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 2,
          ),
          const SignOutButton(),
        ],
      ),
    ));
  }
}
