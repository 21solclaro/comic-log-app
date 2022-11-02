// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../component/button/custom_elevated_button.dart';
import '../component/button/custom_outlined_button.dart';
import '../component/form/email_form.dart';
import '../component/form/password_form.dart';
import '../provider/sign_provider.dart';
import '../provider/user_provider.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

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
            //フォーム
            const EmailForm(),
            const SizedBox(height: 8),
            const PasswordForm(),
            const SizedBox(height: 30),
            //サインインボタン
            CustomElevatedButton(
              label: 'Sign In',
              color: Colors.black,
              onPressed: () => signIn(context, ref),
            ),
            const SizedBox(height: 10),
            CustomOutlinedButton(
              label: 'Back',
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  //サインイン
  void signIn(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);

    ref.read(userStateNotifierProvider.notifier).signIn(
          context: context,
          email: email,
          password: password,
        );
  }
}
