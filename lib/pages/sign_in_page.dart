import 'package:comic_log_app/providers/user_provider.dart';
import '../providers/sign_provider.dart';
import '../widgets/buttons/custom_outlined_button.dart';
import '../widgets/buttons/sign_button.dart';
import '../widgets/sign_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sign = ref.watch(userStateNotifierProvider.notifier);
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);
    final signInFormKey = GlobalKey<FormState>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('HELLO',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 40),
            Form(
              key: signInFormKey,
              child: Column(
                children: const <Widget>[
                  EmailForm(),
                  SizedBox(height: 8),
                  PasswordForm(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SignButton(
              formKey: signInFormKey,
              text: 'Sign In',
              errorMessage: 'ログインに失敗しました。',
              function: () => sign.signIn(email.text, password.text),
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
