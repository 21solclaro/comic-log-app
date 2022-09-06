import '../providers/sign_provider.dart';
import '../widgets/buttons/custom_outlined_button.dart';
import '../widgets/text_field/email_field.dart';
import '../widgets/text_field/password_field.dart';
import '../widgets/text_field/username_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'root_page.dart';

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
            SignUpButton(formKey: signUpFormKey, text: 'Sign Up'),
            // const CustomElevatedButton(text: 'Sign Up', function: _signUp),
            const SizedBox(height: 10),
            CustomOutlinedButton(
                text: 'Back', function: () => Navigator.pop(context))
          ],
        ),
      ),
    );
  }
}

class SignUpButton extends ConsumerWidget {
  const SignUpButton({Key? key, required this.formKey, required this.text})
      : super(key: key);

  final GlobalKey<FormState> formKey;
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final username = ref.watch(usernameProvider);
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
            // final result = await auth.createUserWithEmailAndPassword(
            //     email: email.text, password: password.text);
            // final user = model.User(
            //     uid: result.user!.uid,
            //     userImg: '',
            //     userName: result.user!.email!.split('@')[0],
            //     createdAt: DateTime.now(),
            //     updatedAt: DateTime.now());

            // await collection.doc(user.uid).set(user.toJson());
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const RootPage()));
            username.clear();
            email.clear();
            password.clear();
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text(
                  'Sign Up failed. Please fill out all forms correctly or sign in.'),
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
