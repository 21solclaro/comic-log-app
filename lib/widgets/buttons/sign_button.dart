import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../pages/root_page.dart';
import '../../providers/sign_provider.dart';

class SignButton extends ConsumerWidget {
  const SignButton({
    Key? key,
    required this.formKey,
    required this.text,
    required this.errorMessage,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final String text;
  final String errorMessage;

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
              content: Text('正しく入力してください。'),
              backgroundColor: Colors.red,
            ));
            return;
          }
          try {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const RootPage()));
            username.clear();
            email.clear();
            password.clear();
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(errorMessage),
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
