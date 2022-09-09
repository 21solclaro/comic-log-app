import '../providers/sign_provider.dart';
import '../providers/user_provider.dart';
import '../widgets/buttons/custom_outlined_button.dart';
import '../widgets/buttons/sign_button.dart';
import '../widgets/sign_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sign = ref.watch(userStateNotifierProvider.notifier);
    final username = ref.watch(usernameProvider);
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);
    final signUpFormKey = GlobalKey<FormState>();

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
              errorMessage: '登録に失敗しました。',
              function: () =>
                  sign.signUp(username.text, email.text, password.text),
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