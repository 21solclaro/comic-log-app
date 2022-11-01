// Flutter imports:
import 'package:flutter/material.dart';

class PageBackButton extends StatelessWidget {
  const PageBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () => Navigator.pop(context),
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          shape: const StadiumBorder(),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          side: const BorderSide(color: Colors.black, width: 1.0),
        ),
        child: const Text('Back'),
      ),
    );
  }
}
