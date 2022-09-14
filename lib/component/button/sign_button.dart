// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignButton extends ConsumerWidget {
  const SignButton({
    Key? key,
    required this.formKey,
    required this.text,
    required this.function,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final String text;
  final Function function;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () async => function(),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const StadiumBorder(),
                textStyle: const TextStyle(fontWeight: FontWeight.bold)),
            child: Text(text)));
  }
}
