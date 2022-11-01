// Flutter imports:
import 'package:flutter/material.dart';

class StateTag extends StatelessWidget {
  const StateTag({super.key, required this.stateText, required this.color});

  final String stateText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Text(
        stateText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
