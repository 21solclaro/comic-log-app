// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../component/button/page_back_button.dart';
import '../component/button/sign_up_button.dart';
import '../component/form/email_form.dart';
import '../component/form/password_form.dart';
import '../component/form/username_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'WELCOME',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            //フォーム
            EmailForm(),
            SizedBox(height: 8),
            PasswordForm(),
            SizedBox(height: 8),
            UsernameForm(),
            //ボタン
            SizedBox(height: 30),
            SignUpButton(),
            SizedBox(height: 10),
            PageBackButton(),
          ],
        ),
      ),
    );
  }
}
