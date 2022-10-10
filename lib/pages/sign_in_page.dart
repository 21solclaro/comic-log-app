// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../component/button/page_back_button.dart';
import '../component/button/sign_in_button.dart';
import '../component/form/email_form.dart';
import '../component/form/password_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'HELLO',
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
            //ボタン
            SizedBox(height: 30),
            SignInButton(),
            SizedBox(height: 10),
            PageBackButton(),
          ],
        ),
      ),
    );
  }
}
