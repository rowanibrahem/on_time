import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/features/splash_screen/presentation/widgets/splash_view.dart';
import 'package:on_time/features/vacation/presentation/widgets/vacation_view.dart';
import 'package:on_time/features/widgets/home_page.dart';


import 'constants.dart';
import 'features/profile_detail_page/presentation/views/profile_details_view.dart';
import 'features/widgets/bottom_nav.dart';
import 'features/widgets/views/bloc_observer.dart';
import 'features/widgets/views/body.dart';
import 'features/widgets/views/network.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheNetwork.cachInstialization();
  token=  await CacheNetwork.getCacheData(key: "token");
  print("tokkkkeeeeeennnnn : $token");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String title = 'BottomAppBar With Centered FAB';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocProvider(
          create: (ctx)=>AuthCubit(),
  child: MaterialApp(
    title: title,
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const BottomNav(),
  ),

  );
}

