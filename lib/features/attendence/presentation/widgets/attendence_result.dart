import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/utilies/styles.dart';
import 'attendance_body.dart';
import 'buttom_4.dart';


class AttResult extends StatefulWidget {
  // final String qrCode;

  const AttResult({Key? key}) : super(key: key);

  @override
  State<AttResult> createState() => _AttResultState();
}

class _AttResultState extends State<AttResult> {
  @override
  void initState() {
    super.initState();
    navigateToNextPage();
  }

  void navigateToNextPage() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNav4()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50 , left: 10),
          child: Stack(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300, // Set the desired width of the circle
                      height: 300, // Set the desired height of the circle
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor, // Set the desired color of the circle
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 200,
                      ),
                    ),
                    SizedBox(
                      height: 57,
                    ),
                    Text('Done',
                    style: Styles.textStyle152.copyWith(fontSize: 60 , color: kPrimaryColor , fontWeight: FontWeight.w900) ,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 16,
                left: 16,
                child: Row(
                  children: [
                    ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        color: kPrimaryColor,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            weight: 100.0,
                          ),
                          onPressed: () {
                            Navigator.pop(context); // Replace with the desired navigation action
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                        'Attendance',
                        style: Styles.textStyle152.copyWith(fontSize: 37 , fontWeight: FontWeight.w700)
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
