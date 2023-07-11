import 'package:flutter/material.dart';


Widget buttomSheetStyle(){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Today points '),
            // TextField(
            //   keyboardType: TextInputType.multiline,
            //   decoration: const InputDecoration(
            //     filled: true,
            //     fillColor: Colors.white,
            //     enabledBorder: OutlineInputBorder(
            //       borderSide: BorderSide.none,
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(color: Colors.blue),
            //     ),
            //     contentPadding: EdgeInsets.all(16),
            //   ),
            // ),
          ],
        ),
      ],
    ),
  );
}