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
                style: Styles.textStyle152.copyWith(color: kPrimaryColor, fontSize: 30),
              ),
              SizedBox(
                width: 100,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.lightBlueAccent,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    contentPadding: EdgeInsets.all(16),
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
