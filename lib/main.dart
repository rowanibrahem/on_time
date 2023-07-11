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
// import 'features/widgets/home_page2.dart';
// import 'features/widgets/home_page.dart';
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
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/features/permissions/presentitation/widgets/permission_view.dart';
import 'package:on_time/features/splash_screen/presentation/widgets/splash_view.dart';
import 'package:on_time/features/vacation/presentation/widgets/vacation_view.dart';


import 'constants.dart';
import 'features/widgets/bottom_nav.dart';
import 'features/widgets/home_page.dart';
import 'features/widgets/views/bloc_observer.dart';
import 'features/widgets/views/body.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/widgets/views/network.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheNetwork.cachInstialization();
  token=  await CacheNetwork.getCacheData(key: "token");
  print("tokkkkeeeeeennnnn : $token");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String title = 'BottomAppBar With Centered FAB';

  @override
  Widget build(BuildContext context) =>
      BlocProvider(
          create: (ctx)=>AuthCubit(),
  child: MaterialApp(
    title: title,
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home:  SplashScreen(),
  ),

  );
}

