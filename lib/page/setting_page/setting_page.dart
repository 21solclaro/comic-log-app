// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'sign_out_modal.dart';
import 'theme_switch.dart';
import 'user_info_card.dart';
import 'username_modal.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          //ユーザー情報カード
          UserInfoCard(),
          SizedBox(height: 30),
          Text('Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Divider(thickness: 2),
          UsernameModal(),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.password),
            title: Text('Password'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: 20),
          Text('System',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Divider(thickness: 2),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('App Icon Theme'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ThemeSwitch(),
          SizedBox(height: 20),
          Divider(thickness: 2),
          SignOutModal(),
        ],
      ),
    ));
  }
}
