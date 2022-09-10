// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../provider/sign_provider.dart';
import '../../ui_core/validator.dart';

class EmailForm extends ConsumerWidget {
  const EmailForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);

    return TextFormField(
      controller: email,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: Validator.validateEmail,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.email),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          hintText: 'Email',
          fillColor: Colors.white,
          filled: true),
    );
  }
}
