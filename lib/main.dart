import 'package:flutter/material.dart';

import 'core/shared_component/bottom_navigation_bar.dart';
import 'core/utilies/assets.dart';
import 'features/attendence/presentation/widgets/attednce_view.dart';
import 'features/notices_page/presentation/widgets/notice_body.dart';
import 'features/vacation/presentation/widgets/alert_test.dart';
import 'features/vacation/presentation/widgets/vacation_view.dart';
import 'features/widgets/home_item.dart';
import 'features/widgets/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage(AssetData.backGround),
    fit: BoxFit.cover,
    ),
    ),
      child :  QrCode(),
    ),
    );
  }
}

