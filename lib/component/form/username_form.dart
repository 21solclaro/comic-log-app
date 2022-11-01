// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../provider/sign_provider.dart';
import '../../ui_core/validator.dart';

class UsernameForm extends ConsumerWidget {
  const UsernameForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final username = ref.watch(usernameProvider);

    return TextFormField(
      controller: username,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: Validator.validateUsername,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.person),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          hintText: 'Username',
          fillColor: Colors.white,
          filled: true),
    );
  }
}
