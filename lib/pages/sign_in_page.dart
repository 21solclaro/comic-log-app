import '../providers/sign_provider.dart';
import '../widgets/buttons/custom_outlined_button.dart';
import '../widgets/text_field/email_field.dart';
import '../widgets/text_field/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'root_page.dart';

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
            SignInButton(formKey: signInFormKey, text: 'Sign In'),
            // const CustomElevatedButton(text: 'Sign In', function: _signIn),
            const SizedBox(height: 10),
            CustomOutlinedButton(
                text: 'Back', function: () => Navigator.pop(context))
          ],
        ),
      ),
    );
  }
}

class SignInButton extends ConsumerWidget {
  const SignInButton({Key? key, required this.formKey, required this.text})
      : super(key: key);

  final GlobalKey<FormState> formKey;
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);

    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          if (!formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Please fill out all forms correctly.'),
              backgroundColor: Colors.red,
            ));
            return;
          }
          try {
            // await auth.signInWithEmailAndPassword(
            //     email: email.text, password: password.text);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const RootPage()));
            email.clear();
            password.clear();
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text(
                  'Sign in failed. Please fill out all forms correctly or sign up.'),
              backgroundColor: Colors.red,
            ));
          }
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: const StadiumBorder(),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
        child: Text(text),
      ),
    );
  }
}
