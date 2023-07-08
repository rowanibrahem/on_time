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

class GridItem extends StatefulWidget {
  final String iconImage;
  final String title;
  final VoidCallback onPressed;

  const GridItem({required this.iconImage, required this.title, Key? key, required this.onPressed})
      : super(key: key);

  @override
  State<GridItem> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue,
      ),
      child: Column(
        children: [
          Container(
            height:50,
            width: 50,
            decoration: BoxDecoration(
              // border: BorderDirectional.,
              color: Colors.grey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: widget.onPressed,
                  icon: Image.asset(
                    widget.iconImage,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  widget.title,
                  style: Styles.textStyle152.copyWith(fontSize: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}