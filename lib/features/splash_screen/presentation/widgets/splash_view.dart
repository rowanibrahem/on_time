import 'package:flutter/material.dart';
import 'package:on_time/features/splash_screen/presentation/widgets/splash_body.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}