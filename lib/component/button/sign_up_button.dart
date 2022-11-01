// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../provider/sign_provider.dart';
import '../../provider/user_provider.dart';

class SignUpButton extends ConsumerWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);
    final username = ref.watch(usernameProvider);

    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async =>
            ref.read(userStateNotifierProvider.notifier).signUp(
                  context: context,
                  email: email,
                  password: password,
                  username: username,
                ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: const StadiumBorder(),
            textStyle: const TextStyle(fontWeight: FontWeight.bold)),
        child: const Text('Sign Up'),
      ),
    );
  }
}
