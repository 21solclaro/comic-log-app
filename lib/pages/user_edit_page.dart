// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../component/button/page_back_button.dart';
import '../component/button/save_button.dart';
import '../component/form/username_form.dart';
import '../component/user_icon.dart';

class UserEditPage extends StatelessWidget {
  const UserEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            //フォーム
            UserIcon(),
            SizedBox(height: 50),
            UsernameForm(),
            //ボタン
            SizedBox(height: 80),
            SaveButton(),
            SizedBox(height: 10),
            PageBackButton(),
          ],
        ),
      ),
    );
  }
}
