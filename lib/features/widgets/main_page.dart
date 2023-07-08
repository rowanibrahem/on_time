import 'package:flutter/material.dart';
import 'package:on_time/features/widgets/test_2.dart';

import '../more_page/widgets/more_screen.dart';
import '../notices_page/presentation/widgets/notice_body.dart';
import '../profile_detail_page/presentation/widgets/profile_details_view.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final pages = <Widget>[
    HomePage(),
    NoticesPage(),
    ProfileDetailsPage(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        extendBody: true,
        body: pages[index],
        bottomNavigationBar: TabBarMaterialWidget(
          index: index,
          onChangedTab: onChangedTab,
        ),
  floatingActionButton: FloatingActionButton(

    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '100 ',
          ),
          Text('points')
        ],
      ),
    ),
    onPressed: (){},
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}