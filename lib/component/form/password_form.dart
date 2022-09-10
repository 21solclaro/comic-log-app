// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../provider/sign_provider.dart';
import '../../ui_core/validator.dart';

class PasswordForm extends ConsumerWidget {
  const PasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = ref.watch(passwordProvider);
    final isVisible = ref.watch(isVisibleProvider);

    return TextFormField(
      obscureText: !isVisible,
      controller: password,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: Validator.validatePassword,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.password),
          suffixIcon: IconButton(
            icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              ref.read(isVisibleProvider.notifier).state = !isVisible;
            },
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          hintText: 'Password',
          fillColor: Colors.white,
          filled: true),
    );
  }
}
