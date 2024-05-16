import 'package:flutter/material.dart';
import "dart:math";
import 'dart:developer' as dev;

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int activeDiceImage = 1;
  final random = Random();
  // void onClickButton(String msg) {
  void rollDice() {
    setState(() {
      activeDiceImage = random.nextInt(6) + 1;
      dev.log("roll_dice");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "images/dice-$activeDiceImage.png",
          width: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton.icon(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20)),
            icon: const Icon(Icons.apple_rounded),
            onPressed: rollDice,
            label: const Text(
              "click",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        // ElevatedButton.icon(
        //     icon: Icon(Icons.accessible),
        //     onPressed: () {},
        //     label: const Text(
        //       "click",
        //       style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 20,
        //           fontWeight: FontWeight.bold),
        //     )),
        // ElevatedButton(
        //   style: ButtonStyle(),
        //     onPressed: rollDice,
        //     child: const Text(
        //       "click",
        //       style: TextStyle(
        //           color: Color.fromARGB(255, 252, 118, 118),
        //           fontSize: 20,
        //           fontWeight: FontWeight.bold),
        //     ))
      ],
    );
  }
}
