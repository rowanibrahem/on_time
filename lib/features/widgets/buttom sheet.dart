import 'package:flutter/material.dart';

import '../../core/shared_component/buttom_sheet.dart';


Widget buttomSheetStyle(){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtomItem(
          text: 'Today points',
        ),
        SizedBox(
          height: 15,
        ),
        ButtomItem(
          text: 'Weekly points',
        ),
        SizedBox(
          height: 15,
        ),
        ButtomItem(
          text: 'Monthly points',
        ),
      ],
    ),
  );
}