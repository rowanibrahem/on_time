// import 'package:flutter/material.dart';
// import 'package:getwidget/components/button/gf_button.dart';
// import 'package:getwidget/shape/gf_button_shape.dart';
// import 'package:on_time/core/utilies/styles.dart';
// import 'package:on_time/features/attendence/presentation/widgets/attednce_view.dart';
//
// import '../../constants.dart';
// import '../../core/shared_component/app_bar.dart';
// import '../../core/shared_component/bottom_navigation_bar.dart';
// import '../../core/utilies/assets.dart';
// import '../departure/presentation/widgets/depart_view.dart';
// import '../more_page/widgets/more_screen.dart';
// import '../notices_page/presentation/widgets/notice_body.dart';
// import '../permissions/presentitation/widgets/permission_view.dart';
// import '../profile_detail_page/presentation/widgets/profile_details_view.dart';
// import '../vacation/presentation/widgets/vacation_view.dart';
// import 'home_item.dart';
//
// class HomePageTest extends StatefulWidget {
//   const HomePageTest({Key? key}) : super(key: key);
//
//   @override
//   State<HomePageTest> createState() => _HomePageTestState(AssetData.iconImage,AssetData.secondIcon);
// }
//
// class _HomePageTestState extends State<HomePageTest> {
//   int currentindex = 0;
//   final List<Widget> _tabs = [
//     HomePageTest(),
//     NoticesPage(),
//     ProfileDetailsPage(),
//     MoreScreen(),
//   ];
//   Widget currentScreen = HomePageTest();
//   final String iconImage;
//   final String title;
//
//   _HomePageTestState(this.iconImage, this.title);
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//         appBar: AppBarWidget(),
//     body: Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
//     child: GridView.builder(
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 2,
//     crossAxisSpacing: 0,
//     mainAxisSpacing: 0,
//     childAspectRatio: 1, // Ratio of width to height for each grid item
//     ),
//     itemCount: 4, // Number of grid items
//     itemBuilder: (context, index) {
//     // Custom itemBuilder with dividers
//     if (index.isOdd) {
//     return Divider(color: Colors.black, thickness: 1);
//     } else {
//     final itemIndex = index ~/ 2;
//
//     return GridItem(
//     iconImage: iconImage[itemIndex],
//     title: title[itemIndex],
//     onPressed: () {
//     // Handle onPressed for each grid item
//     switch (itemIndex) {
//     case 0:
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Qr()));
//     break;
//     case 1:
//     Navigator.push(context, MaterialPageRoute(builder: (context) => DeptView()));
//     break;
//     case 2:
//     Navigator.push(context, MaterialPageRoute(builder: (context) => PermissionsPage()));
//     break;
//     case 3:
//     Navigator.push(context, MaterialPageRoute(builder: (context) => VacationView()));
//     break;
//     }
//     },
//     );
//     }
//     },
//     ),
//     ),
//     floatingActionButton: FloatingActionButton(
//     child: Center(
//     child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     Text('100'),
//     Text('points'),
//     ],
//     ),
//     ),
//     onPressed: () {},
//     ),
//     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     bottomNavigationBar: BottomAppBar(
//     shape: CircularNotchedRectangle(),
//     notchMargin: 0,
//     child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     mainAxisSize: MainAxisSize.max,
//     children: [
//     Padding(
//     padding: const EdgeInsets.only(left: 10),
//     child: Column(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//     MaterialButton(
//     minWidth: 40,
//     onPressed: () {
//     setState(() {
//     currentScreen = HomePageTest();
//     currentindex = 0;
//     });
//     },
//     child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     Icon(
//     Icons.home,
//     color: currentindex == 0 ? Colors.blue : Colors.grey,
//     ),
//     Text(
//     'Home',
//     style: TextStyle(
//     color: currentindex == 0 ? Colors.blue : Colors.grey,
//     ),
//     ),
//     ],
//     ),
//     ),
//     ],
//     ),
//     ),
//     Padding(
//     padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
//     child: Column(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//     MaterialButton(
//     minWidth: 40,
//     onPressed: () {
//     setState(() {
//     currentScreen = NoticesPage();
//     currentindex = 1;
//     });
//     },
//     child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     Image.asset(
//     'assets/images/Group 524.png',
//     color: currentindex == 1 ? Colors.blue : Colors.grey,
//     ),
//     Text(
//     'Notices',
//     style: TextStyle(
//     color: currentindex == 1 ? Colors.blue : Colors.grey,
//     ),
//     ),
//     ],
//     ),
//     ),
//     ],
//     ),
//     ),
//     Padding(
//     padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
//     child: Column(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//     MaterialButton(
//     minWidth: 40,
//     onPressed: () {
//     setState(() {
//     currentScreen = ProfileDetailsPage();
//     currentindex = 2;
//     });
//     },
//     child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     Image.asset(
//     'assets/images/Icon metro-profile.png',
//     color: currentindex == 2 ? Colors.blue : Colors.grey,
//     ),
//     Text(
//     'Profile Details',
//     style: TextStyle(
//     color: currentindex == 2 ? Colors.blue : Colors.grey,
//     ),
//     ),
//     ],
//     ),
//     ),
//     ],
//     ),
//     ),
//     Padding(
//     padding: const EdgeInsets.only(left: 10),
//     child: Column(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//     MaterialButton(
//     minWidth: 40,
//     onPressed: () {
//     setState(() {
//     currentScreen = MoreScreen();
//     currentindex = 3;
//     });
//     },
//     child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     Icon(
//     Icons.more_horiz,
//     color: currentindex == 3 ? Colors.blue : Colors.grey,
//     ),
//     Text(
//     'More',
//       style: TextStyle(
//         color: currentindex == 3 ? Colors.blue : Colors.grey,
//     ),
//     ),
//     ],
//     ),
//     ),
//     ],
//     ),
//     ),
//           ],
//         ),
//     ),
//     ),
//     );
//   }
// }