// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../model/user/user.dart' as model;
import '../../pages/root_page.dart';
import '../../provider/sign_provider.dart';

class SignButton extends ConsumerWidget {
  const SignButton({
    Key? key,
    required this.formKey,
    required this.text,
    required this.errorMessage,
    required this.function,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final String text;
  final String errorMessage;
  final Function function;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () async {
              if (!formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('正しく入力してください。'),
                    backgroundColor: Colors.red));
                return;
              }
              try {
                function();
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(errorMessage), backgroundColor: Colors.red));
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const StadiumBorder(),
                textStyle: const TextStyle(fontWeight: FontWeight.bold)),
            child: Text(text)));
  }
}

class SignUpButton extends ConsumerWidget {
  const SignUpButton({
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
                    backgroundColor: Colors.red));
                return;
              }
              try {
                final result = await FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: email.text, password: password.text);
                final user = model.User(
                    uid: result.user!.uid,
                    userImg: '',
                    username: username.text,
                    createdAt: DateTime.now(),
                    updatedAt: DateTime.now());

                await FirebaseFirestore.instance
                    .collection('users')
                    .doc(user.uid)
                    .set(user.toJson());
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const RootPage()));
                username.clear();
                email.clear();
                password.clear();
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(errorMessage), backgroundColor: Colors.red));
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const StadiumBorder(),
                textStyle: const TextStyle(fontWeight: FontWeight.bold)),
            child: Text(text)));
  }
}

class SignInButton extends ConsumerWidget {
  const SignInButton({
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
                    backgroundColor: Colors.red));
                return;
              }
              try {
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: email.text, password: password.text);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const RootPage()));
                username.clear();
                email.clear();
                password.clear();
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(errorMessage), backgroundColor: Colors.red));
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const StadiumBorder(),
                textStyle: const TextStyle(fontWeight: FontWeight.bold)),
            child: Text(text)));
  }
}
