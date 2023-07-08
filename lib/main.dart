// import 'package:flutter/material.dart';
//
// import 'core/shared_component/app_bar2.dart';
// import 'core/shared_component/bottom_navigation_bar.dart';
// import 'core/utilies/assets.dart';
// import 'features/attendence/presentation/widgets/attednce_view.dart';
// import 'features/notices_page/presentation/widgets/notice_body.dart';
// import 'features/vacation/presentation/widgets/vacation_body.dart';
// import 'features/vacation/presentation/widgets/vacation_view.dart';
// import 'features/widgets/home_item.dart';
// import 'features/widgets/home_page.dart';
// import 'features/widgets/home_test.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:  Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(AssetData.backGround),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child :  HomePage(),
//     ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:on_time/features/attendence/presentation/widgets/attednce_view.dart';
import 'package:on_time/features/more_page/widgets/more_screen.dart';
import 'package:on_time/features/notices_page/presentation/widgets/notice_body.dart';
import 'package:on_time/features/profile_detail_page/presentation/widgets/profile_details.dart';
import 'package:on_time/features/splash_screen/presentation/widgets/splash_view.dart';
import 'package:on_time/features/vacation/presentation/widgets/vacation_view.dart';
import 'package:on_time/features/widgets/home_page.dart';

import 'features/widgets/test_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'BottomAppBar With Centered FAB';

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    debugShowCheckedModeBanner: false,
    home: VacationView(),
  );
}

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
  Widget build(BuildContext context) => Scaffold(

    extendBody: true,
    body: pages[index],
    bottomNavigationBar: TabBarMaterialWidget(
      index: index,
      onChangedTab: onChangedTab,
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => print('Hello World'),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}