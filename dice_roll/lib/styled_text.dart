import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 30, color: Color.fromARGB(151, 0, 0, 0)),
    );
  }
}
