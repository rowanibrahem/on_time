import 'package:flutter/material.dart';
import '../../../../core/utilies/assets.dart';
import '../../../../core/utilies/styles.dart';
import '../../../widgets/log_in screen.dart';




class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() async {
    // Add a delay of 3 seconds before navigating
    await Future.delayed(Duration(seconds: 2));

    // Navigate to the next screen and replace the splash screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage(AssetData.backGround),
    fit: BoxFit.cover,
    ),
    ),
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/clock.png',
                width: 300,
                height: 300,
              ),
               Text(
                'On Time',
                style: Styles.textStyle152.copyWith(
                    color: const Color(0xFF435EAD),
                ),
                ),
            ],
          ),
      ),
    );
  }
}
