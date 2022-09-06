import 'package:comic_log_app/providers/sign_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmailField extends ConsumerWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);

    return TextFormField(
      controller: email,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value != null) {
          String pattern = r'^[0-9a-z_./?-]+@([0-9a-z-]+\.)+[0-9a-z-]+$';
          RegExp regExp = RegExp(pattern);
          if (!regExp.hasMatch(value)) {
            return 'Please enter a correct email address.';
          }
          return null;
        }
        return null;
      },
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.email),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20)),
          hintText: 'Email',
          fillColor: Colors.white,
          filled: true),
    );
  }
}
