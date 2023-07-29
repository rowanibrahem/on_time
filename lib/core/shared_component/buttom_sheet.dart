import 'package:flutter/material.dart';
import 'package:on_time/constants.dart';
import 'package:on_time/core/utilies/styles.dart';

class ButtomItem extends StatelessWidget {

  final String text;
  const ButtomItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: Styles.textStyle152.copyWith(color: kPrimaryColor, fontSize: 35),
              ),
               Container(
                 decoration:  BoxDecoration(
                   color: Colors.white,
                   borderRadius: const BorderRadius.all(Radius.elliptical(10, 10)),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.5), // Set the shadow color
                       spreadRadius: 2, // Set the spread radius of the shadow
                       blurRadius: 6, // Set the blur radius of the shadow
                       offset: Offset(0, 3), // Set the offset of the shadow
                     ),
                   ],
                 ),
                width: 120,
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center, // Set text alignment to center
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 30,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(.2),
                          // width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
