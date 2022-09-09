import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {Key? key, required this.text, required this.function})
      : super(key: key);

  final String text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          function();
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          shape: const StadiumBorder(),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          side: const BorderSide(color: Colors.black, width: 1.0),
        ),
        child: Text(text),
      ),
    );
  }
}
