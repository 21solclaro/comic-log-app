// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../component/button/custom_outlined_button.dart';
import '../component/button/sign_button.dart';
import '../component/form/email_form.dart';
import '../component/form/password_form.dart';
import '../component/form/username_form.dart';
import '../provider/sign_provider.dart';
import '../provider/user_provider.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpFormKey = GlobalKey<FormState>();
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);
    final username = ref.watch(usernameProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('WELCOME',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 40),
            Form(
              key: signUpFormKey,
              child: Column(
                children: const <Widget>[
                  EmailForm(),
                  SizedBox(height: 8),
                  PasswordForm(),
                  SizedBox(height: 8),
                  UsernameForm(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SignButton(
              formKey: signUpFormKey,
              text: 'Sign Up',
              function: () =>
                  ref.read(userStateNotifierProvider.notifier).signUp(
                        context: context,
                        email: email,
                        password: password,
                        username: username,
                        errorMessage: '登録に失敗しました。',
                      ),
            ),
            const SizedBox(height: 10),
            CustomOutlinedButton(
                text: 'Back', function: () => Navigator.pop(context))
          ],
        ),
      ),
    );
  }
}
