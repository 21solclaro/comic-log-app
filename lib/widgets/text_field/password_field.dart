import 'package:comic_log_app/providers/sign_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordField extends ConsumerWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = ref.watch(passwordProvider);
    final isVisible = ref.watch(isVisibleProvider);

    return TextFormField(
      obscureText: !isVisible,
      controller: password,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value != null) {
          String pattern = r'^[a-zA-Z0-9]{6,}$';
          RegExp regExp = RegExp(pattern);
          if (!regExp.hasMatch(value)) {
            return 'Password must be at least 6 alphanumeric characters.';
          }
          return null;
        }
        return null;
      },
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.password),
          suffixIcon: IconButton(
            icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              ref.read(isVisibleProvider.notifier).state = !isVisible;
            },
          ),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20)),
          hintText: 'Password',
          fillColor: Colors.white,
          filled: true),
    );
  }
}
