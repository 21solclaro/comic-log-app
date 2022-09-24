// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../component/button/page_back_button.dart';
import '../component/button/sign_in_button.dart';
import '../component/form/email_form.dart';
import '../component/form/password_form.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'HELLO',
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
              ],
            ),
            //ボタン
            const SizedBox(height: 30),
            const SignInButton(),
            const SizedBox(height: 10),
            const PageBackButton(),
          ],
        ),
      ),
    );
  }
}
