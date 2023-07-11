// import 'package:flutter/material.dart';
//
// import '../../features/more_page/widgets/more_screen.dart';
// import '../../features/notices_page/presentation/widgets/notice_body.dart';
// import '../../features/profile_detail_page/presentation/widgets/profile_details_view.dart';
// import '../../features/widgets/home_page2.dart';
//
//
// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int currentindex = 0;
//   final List<Widget> _tabs = [
//     HomePage(),
//     NoticesPage(),
//     ProfileDetailsPage(),
//     MoreScreen(),
//   ];
//   Widget currentScreen = HomePage();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//            floatingActionButton: FloatingActionButton(
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       '100 ',
//                     ),
//                     Text('points')
//                   ],
//                 ),
//               ),
//               onPressed: (){},
//             ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//             bottomNavigationBar: BottomAppBar(
//               shape: CircularNotchedRectangle(),
//               notchMargin: 0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         MaterialButton(
//                           minWidth: 40,
//                           onPressed: (){
//                             setState(() {
//                               currentScreen = HomePage();
//                               currentindex = 0;
//                             });
//                           },
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 Icons.home,
//                                 color: currentindex == 0 ? Colors.blue : Colors.grey,
//                               ),
//                               Text(
//                                 'Home',
//                                 style: TextStyle(
//                                   color: currentindex == 0 ? Colors.blue : Colors.grey,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20 , top: 10 , bottom: 10),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         MaterialButton(
//                           minWidth: 40,
//                           onPressed: (){
//                             setState(() {
//                               currentScreen = NoticesPage();
//                               currentindex = 1;
//                             });
//                           },
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Image.asset(
//                                 'assets/images/Group 524.png',
//                                 color: currentindex == 1 ? Colors.blue : Colors.grey,
//                               ),
//                               Text(
//                                 'Notices',
//                                 style: TextStyle(
//                                   color: currentindex == 1 ? Colors.blue : Colors.grey,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20 , top: 10 , bottom: 10),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         MaterialButton(
//                           minWidth: 40,
//                           onPressed: (){
//                             setState(() {
//                               currentScreen = ProfileDetailsPage();
//                               currentindex = 2;
//                             });
//                           },
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Image.asset(
//                                 'assets/images/Icon metro-profile.png' ,
//                                 color: currentindex == 2 ? Colors.blue : Colors.grey,
//                               ),
//                               Text(
//                                 'profile details',
//                                 style: TextStyle(
//                                   color: currentindex == 2 ? Colors.blue : Colors.grey,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         MaterialButton(
//                           minWidth: 40,
//                           onPressed: (){
//                             setState(() {
//                               currentScreen = MoreScreen();
//                               currentindex = 3;
//                             });
//                           },
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 Icons.more_horiz,
//                                 color: currentindex == 3 ? Colors.blue : Colors.grey,
//                               ),
//                               Text(
//                                 'More',
//                                 style: TextStyle(
//                                   color: currentindex == 3 ? Colors.blue : Colors.grey,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//   }
// }