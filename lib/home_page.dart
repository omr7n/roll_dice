import 'package:flutter/material.dart';
import 'package:roll_dice_appp/roll_dice.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(150, 201, 243, 0.8),
      body: GradientContainer(
        Color.fromARGB(255, 226, 103, 247),
        Color.fromARGB(255, 246, 78, 193),
        Color.fromARGB(255, 42, 131, 255),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.color1, this.color2, this.color3, {super.key});

//   final Color color1;
//   final Color color2;
//   final Color color3;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           gradient:
//               LinearGradient(begin: startAlignment, end: endAlignment, colors: [
//         color1,
//         color2,
//         color3,
//       ])),
//       child: Container(
//         width: double.infinity,
//         child: Column(
//                   children: [
//         Image.asset(
//           "images/photo-1467269204594-9661b134dd2b.jpg",
//           width: 100,
//         ),
//         Image.asset("images/photo-1473580044384-7ba9967e16a0.jpg",
//             width: 100),
//         Image.asset(
//           "images/photo-1467269204594-9661b134dd2b.jpg",
//           width: 100,
//         ),
//         // Image.asset("images/photo-1473580044384-7ba9967e16a0.jpg",
//         //     width: double.infinity),
//         // Image.asset("images/photo-1467269204594-9661b134dd2b.jpg",
//         //     width: double.infinity),
//         // Image.asset("images/photo-1473580044384-7ba9967e16a0.jpg",
//         //     width: double.infinity),
//                   ],
//                 ),
//       ),
//     );
//   }
// }

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            color1,
            color2,
            color3,
          ],
        ),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
