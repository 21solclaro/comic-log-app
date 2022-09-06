import '../../providers/sign_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsernameField extends ConsumerWidget {
  const UsernameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final username = ref.watch(usernameProvider);

    return TextFormField(
      controller: username,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value != null) {
          String pattern = r'^[a-zA-Z0-9]{3,}$';
          RegExp regExp = RegExp(pattern);
          if (!regExp.hasMatch(value)) {
            return 'Password must be at least 3 alphanumeric characters.';
          }
          return null;
        }
        return null;
      },
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.person),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20)),
          hintText: 'Username',
          fillColor: Colors.white,
          filled: true),
    );
  }
}
