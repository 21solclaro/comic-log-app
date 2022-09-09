import '../constants/validator.dart';
import '../providers/sign_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Eメールアドレスの入力フォーム
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

//パスワードの入力フォーム
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

//ユーザーネームの入力フォーム
class UsernameForm extends ConsumerWidget {
  const UsernameForm({Key? key}) : super(key: key);

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
