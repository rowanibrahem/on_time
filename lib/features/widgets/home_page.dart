import 'package:flutter/material.dart';
import '../../core/shared_component/app_bar.dart';
import '../../core/utilies/assets.dart';
import '../attendence/presentation/widgets/attednce_view.dart';
import '../departure/presentation/widgets/depart_view.dart';
import '../permissions/presentitation/widgets/bottom_3.dart';
import '../permissions/presentitation/widgets/permission_view.dart';
import '../vacation/presentation/widgets/bottom_nav.dart';
import '../vacation/presentation/widgets/vacation_view.dart';
import 'home_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height*.65,
              width: MediaQuery.of(context).size.width*.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(19),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                      //   Image.asset(AssetData.firstIcon ,
                      //   fit: BoxFit.contain,),
                      // Text('Attendance') ,
                        GridItem(
                            iconImage: AssetData.firstIcon,
                            title: 'Attendance',
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Qr()));
                            }),
                        Divider(thickness: 3,),
                        GridItem(
                          iconImage: AssetData.thirdIcon,
                          title: 'permission',
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNav3()));
                          },
                        ),
                        //image
                      ],
                    ),
                  ),
                VerticalDivider(
                  thickness: 3,
                ),
                  Expanded(
                    child: Column(
                      children: [
                        GridItem(
                          iconImage: AssetData.secondIcon,
                          title: 'Departure ', onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DeptView()));
                        },
                        ),
                        Divider(
                          thickness: 3,
                        ),
                        //image
                        GridItem(
                          iconImage: AssetData.fourthIcon,
                          title: 'Vacation',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNav2()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
