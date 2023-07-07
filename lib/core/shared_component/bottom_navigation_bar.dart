import 'package:flutter/material.dart';
import 'package:on_time/features/widgets/home_page.dart';

import '../../features/more_page/widgets/more_screen.dart';
import '../../features/notices_page/presentation/widgets/notice_body.dart';
import '../../features/profile_detail_page/presentation/widgets/profile_details.dart';

class ButtomBar extends StatefulWidget {
   ButtomBar({Key? key}) : super(key: key);

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int currentIndex = 0;

  final List<Widget> _tabs = [
    HomePage(),
    NoticesPage(),
    ProfileDetailsPage(),
    MoreScreen(),
  ];


  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index){
        setState(() {
          currentIndex = index;
        });
      },
      items:  const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_off),
          label: 'Notices',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.details),
          label: 'Profile Details',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'More',
        ),
      ],

    );

  }
}
