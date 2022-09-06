import '../widgets/buttons/custom_outlined_button.dart';
import '../widgets/buttons/sign_button.dart';
import '../widgets/text_field/email_field.dart';
import '../widgets/text_field/password_field.dart';
import '../widgets/text_field/username_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  UsernameField(),
                  SizedBox(height: 8),
                  EmailField(),
                  SizedBox(height: 8),
                  PasswordField(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SignButton(
              formKey: signUpFormKey,
              text: 'Sign Up',
              errorMessage: '登録に失敗しました。',
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
