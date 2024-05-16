import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w900,
          shadows: const [
            Shadow(
                blurRadius: 30,
                color: Color.fromARGB(66, 255, 0, 0),
                offset: Offset.zero)
          ],
          decoration: TextDecoration.combine([
            TextDecoration.lineThrough,
            TextDecoration.overline,
            TextDecoration.underline
          ])),
    );
  }
}
