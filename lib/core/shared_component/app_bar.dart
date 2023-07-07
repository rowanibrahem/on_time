import 'package:flutter/material.dart';
import '../../constants.dart';
import '../utilies/styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size(double.infinity, 114);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              "Welcome Back,",
              style: Styles.textStyle152.copyWith(color: Colors.grey ,  fontSize: 30),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      "Rowan Ibrahim",
                      style: Styles.textStyle152.copyWith(color: Colors.white , fontSize: 20),
                    ),
                    Text(
                      '100',
                      style:  Styles.textStyle152.copyWith(color: Colors.white , fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text('Flutter Developer' ,
                    style:  Styles.textStyle152.copyWith(color: Colors.white , fontSize: 15),),
                Text(
                  'Points' ,
                  style:  Styles.textStyle152.copyWith(color: Colors.white , fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }


}
