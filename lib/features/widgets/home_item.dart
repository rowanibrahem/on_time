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

  const GridItem({required this.iconImage, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              iconImage,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            title,
            style: Styles.textStyle152.copyWith(fontSize: 30),
          ),
        ],
      ),
    );
  }
}