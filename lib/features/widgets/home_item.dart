// import 'package:flutter/material.dart';
// import 'package:on_time/core/utilies/assets.dart';
// import 'package:on_time/core/utilies/styles.dart';
//
// class HomeItem extends StatelessWidget {
//   const HomeItem({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.blue,
//               image: const DecorationImage(
//                 fit: BoxFit.fill,
//                 image: AssetImage('assets/images/checking-attendance.png'),
//               ),
//             ),
//           ),
//           Text(
//             'Attendance',
//             style: Styles.textStyle152.copyWith(fontSize: 30),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../core/utilies/styles.dart';

class GridItem extends StatelessWidget {
  final String iconImage;
  final String title;
  final VoidCallback onPressed;

  const GridItem(
      {required this.iconImage, required this.title, Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: FractionallySizedBox(
                widthFactor: 0.5, // Adjust this value to make the image smaller
                heightFactor: 0.5,
                child: Image.asset(
                  iconImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              title,
              style: Styles.textStyle152.copyWith(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}