import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: GradientContainer([
          Color.fromARGB(93, 192, 125, 8),
          Color.fromARGB(31, 245, 244, 243),
        ]),
      ),
    ),
  );
}
