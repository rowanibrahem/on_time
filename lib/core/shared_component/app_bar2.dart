import 'package:flutter/material.dart';
import '../../constants.dart';
import '../utilies/styles.dart';

class AppBarWidget2 extends StatelessWidget implements PreferredSizeWidget {
  String text;
  AppBarWidget2({Key? key ,required this.text }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 90);
  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: kPrimaryColor,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        color: Colors.blue,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            weight: 100.0,

                          ),
                          onPressed: () {
                            Navigator.pop(context); // Replace with the desired navigation action
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                        text,
                        style: Styles.textStyle152.copyWith(fontSize: 30 , fontWeight: FontWeight.w700 , color: Colors.white)
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(
                        "Rowan Ibrahim",
                        style: Styles.textStyle152.copyWith(color: Colors.white , fontSize: 20),
                      ),
                      Text(
                        'Your Points',
                        style:  Styles.textStyle152.copyWith(color: Colors.white , fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'Flutter Developer' ,
                      style:  Styles.textStyle152.copyWith(color: Colors.white , fontSize: 15),),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '100' ,
                        style:  Styles.textStyle152.copyWith(color: Colors.white , fontSize: 15),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
    );
  }


}
