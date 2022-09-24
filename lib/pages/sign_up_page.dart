// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../component/button/page_back_button.dart';
import '../component/button/sign_up_button.dart';
import '../component/form/email_form.dart';
import '../component/form/password_form.dart';
import '../component/form/username_form.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'WELCOME',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            //入力フォーム
            Column(
              children: const <Widget>[
                EmailForm(),
                SizedBox(height: 8),
                PasswordForm(),
                SizedBox(height: 8),
                UsernameForm(),
              ],
            ),
            //ボタン
            const SizedBox(height: 30),
            const SignUpButton(),
            const SizedBox(height: 10),
            const PageBackButton(),
          ],
        ),
      ),
    );
  }
}
