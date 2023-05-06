import 'dart:math';

import 'package:dice_roll/styled_text.dart';
import 'package:flutter/material.dart';
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentNum = 1;
  void rollDice() {
    setState(() {
      currentNum = randomizer.nextInt(6) + 1; // 1 - 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentNum.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
          ),
          child: const StyledText('Roll the dice!'),
        ),
      ],
    );
  }
}
