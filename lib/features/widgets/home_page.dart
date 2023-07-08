import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:on_time/core/utilies/styles.dart';
import 'package:on_time/features/attendence/presentation/widgets/attednce_view.dart';

import '../../constants.dart';
import '../../core/shared_component/app_bar.dart';
import '../../core/shared_component/bottom_navigation_bar.dart';
import '../../core/utilies/assets.dart';
import '../departure/presentation/widgets/depart_view.dart';
import '../more_page/widgets/more_screen.dart';
import '../notices_page/presentation/widgets/notice_body.dart';
import '../permissions/presentitation/widgets/permission_view.dart';
import '../profile_detail_page/presentation/widgets/profile_details.dart';
import '../vacation/presentation/widgets/vacation_view.dart';
import 'home_item.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;
  final List<Widget> _tabs = [
    HomePage(),
    NoticesPage(),
    ProfileDetailsPage(),
    MoreScreen(),
  ];
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40 , vertical: 50),
          child: Center(
            child: Container(
              height: 800,
              width: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.black),
              ),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1, // Ratio of width to height for each grid item
                mainAxisSpacing: 0, // Spacing between rows
                crossAxisSpacing: 0,
                children: [
                  GridItem(
                    iconImage: AssetData.firstIcon,
                    title: 'Attendance', onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Qr()));
                  },
                  ),
                  GridItem(
                    iconImage: AssetData.secondIcon,
                    title: 'Departure ', onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DeptView()));
                  },
                  ),

                  GridItem(
                    iconImage: AssetData.thirdIcon,
                    title: 'permission',
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PermissionsPage()));
                    },
                  ),
                  GridItem(
                    iconImage: AssetData.fourthIcon,
                    title: 'Vacation',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VacationView()));
                    },
                  ),
                ],
              ),
            ),
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
          onPressed: (){},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 0,
          child: 
          Row(
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
      ),
    );
  }
}