import 'package:flutter/material.dart';
import 'package:on_time/features/permissions/presentitation/widgets/permission_view.dart';
import 'package:on_time/features/widgets/buttom%20sheet.dart';

import '../../../more_page/widgets/more_screen.dart';
import '../../../notices_page/presentation/widgets/notice_body.dart';
import '../../../profile_detail_page/presentation/views/profile_details_view.dart';
import '../../../widgets/home_page.dart';
import 'attendance_body.dart';




class BottomNav4 extends StatefulWidget {
  const BottomNav4({super.key});

  // final String title;


  @override
  _BottomNav4State createState() => _BottomNav4State();
}

class _BottomNav4State extends State<BottomNav4> {
  int currentindex = 4;
  final List<Widget> _tabs = [
    HomePage(),
    NoticesPage(),
    ProfileDetailsPage(),
    MoreScreen(),
    AttBody(),
  ];
  Widget currentScreen = AttBody();

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        extendBody: true,
        body: _tabs[currentindex],
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = HomePage();
                          currentindex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: 40,
                            color: currentindex == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: currentindex == 0 ? Colors.blue : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20 , top: 10 , bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = NoticesPage();
                          currentindex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Group 524.png',
                            width: 35,
                            height: 35,
                            color: currentindex == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Notices',
                            style: TextStyle(
                              color: currentindex == 1 ? Colors.blue : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20 , top: 10 , bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = ProfileDetailsPage();
                          currentindex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Icon metro-profile.png' ,
                            width: 35,
                            height: 35,
                            color: currentindex == 2 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'profile details',
                            style: TextStyle(
                              color: currentindex == 2 ? Colors.blue : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = MoreScreen();
                          currentindex = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.more_horiz,
                            size: 40,
                            color: currentindex == 3 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'More',
                            style: TextStyle(
                              color: currentindex == 3 ? Colors.blue : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
          onPressed: (){
            showModalBottomSheet(
              constraints: BoxConstraints.expand(
                  width: double.infinity ,
                  height: MediaQuery.of(context).size.height * .3
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context){
                return buttomSheetStyle();
              },
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );

// void onChangedTab(int index) {
//   setState(() {
//     this.index = index;
//   });
// }
}