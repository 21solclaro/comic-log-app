// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../component/button/custom_outlined_button.dart';
import '../component/button/sign_button.dart';
import '../component/form/email_form.dart';
import '../component/form/password_form.dart';
import '../provider/sign_provider.dart';
import '../provider/user_provider.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInFormKey = GlobalKey<FormState>();
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);

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
              function: () =>
                  ref.read(userStateNotifierProvider.notifier).signIn(
                        context: context,
                        email: email,
                        password: password,
                      ),
            ),
            const SizedBox(height: 10),
            CustomOutlinedButton(
              text: 'Back',
              function: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
