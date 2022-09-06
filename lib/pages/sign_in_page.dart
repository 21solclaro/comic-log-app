import '../widgets/buttons/custom_outlined_button.dart';
import '../widgets/buttons/sign_button.dart';
import '../widgets/text_field/email_field.dart';
import '../widgets/text_field/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  EmailField(),
                  SizedBox(height: 8),
                  PasswordField(),
                  SizedBox(height: 16),
                ],
              ),
            ),
            SignButton(
              formKey: signInFormKey,
              text: 'Sign In',
              errorMessage: 'ログインに失敗しました。',
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
