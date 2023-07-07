import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:on_time/core/utilies/styles.dart';

import '../../constants.dart';
import '../../core/shared_component/app_bar.dart';
import '../../core/shared_component/bottom_navigation_bar.dart';
import '../../core/utilies/assets.dart';
import 'home_item.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 40),
         child: Center(
           child: GridView.count(
               crossAxisCount: 2,
             childAspectRatio: 1, // Ratio of width to height for each grid item
             mainAxisSpacing: 0, // Spacing between rows
             crossAxisSpacing: 0,
             children: [
               GridItem(
                 iconImage: AssetData.firstIcon,
                 title: 'Attendance',
               ),
           GridItem(
             iconImage: AssetData.secondIcon,
             title: 'Departure ',
           ),
               GridItem(
                 iconImage: AssetData.thirdIcon,
                 title: 'permission',
               ),
               GridItem(
                 iconImage: AssetData.fourthIcon,
                 title: 'Vacation',
               ),
             ],
           ),
         ),
       ),
        bottomNavigationBar: ButtomBar(),
      ),
    );
  }
}
