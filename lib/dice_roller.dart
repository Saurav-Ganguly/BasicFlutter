import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 6;
  //method for rolling dice
  void rollDice() {
    var randNo = randomizer.nextInt(6) + 1;
    //re-execute the build function
    setState(() {
      currentDiceRoll = randNo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        //space -> padding or SizedBox
        const SizedBox(
          height: 10,
        ),
        //3 button -> elevated button, outlined button, text button
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 40),
            ),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
