import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/utilies/assets.dart';
import '../../../../core/utilies/styles.dart';



class AttBody extends StatelessWidget {
  const AttBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50 , left: 10),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
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
                      style: Styles.textStyle152.copyWith(fontSize: 37 , fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome To On Time App !',
                        style: Styles.textStyle152.copyWith(fontSize: 40)
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Your scan time is',
                        style: Styles.textStyle152.copyWith(fontSize: 35 , color: kPrimaryColor),
                     ),
                      SizedBox(height: 40),
                      Text(
                        '10:42 AM',
                        style: Styles.textStyle152.copyWith(fontSize: 40 , fontWeight: FontWeight.w700)
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Monday , Mar 07 , 2022',
                        style: Styles.textStyle152.copyWith(fontSize: 28 , color: Colors.grey),
                      ),
                      SizedBox(height: 50),
                      Image.asset(
                        AssetData.iconImage,
                        width: 200,
                        height: 200,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on, color: Colors.grey),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Monday , Mar 07 , 2022 : office',
                            style: Styles.textStyle152.copyWith(fontSize: 25 , color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ) ,
      ),
    );
  }
}
