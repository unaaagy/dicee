import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
