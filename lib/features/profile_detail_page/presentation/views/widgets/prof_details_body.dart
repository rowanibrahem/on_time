import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:on_time/constants.dart';
import 'package:on_time/features/profile_detail_page/presentation/views/widgets/loading_indicator.dart';

import '../../../../../core/utilies/assets.dart';
import '../../../../../core/utilies/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';


class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  TextEditingController _fromDateController = TextEditingController();
  TextEditingController _toDateController = TextEditingController();

  @override
  void dispose() {
    _fromDateController.dispose();
    _toDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetData.backGround),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 45),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        child: TextField(
                          controller: _fromDateController,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2070),
                            );
                            if (pickedDate != null) {
                              setState(() {
                                _fromDateController.text =
                                    DateFormat('yyyy/MM/dd').format(pickedDate);
                              });
                            }
                          },
                          decoration: const InputDecoration(
                            filled: true,
                            suffixIcon: Icon(Icons.calendar_month_outlined),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 16),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Week 1' , style: Styles.textStyle40.copyWith(fontSize: 20 , color: kPrimaryColor ),),
                          Text('Week 2' , style: Styles.textStyle40.copyWith(fontSize: 20 , color: kPrimaryColor),),
                          Text('Week 3' , style: Styles.textStyle40.copyWith(fontSize: 20 , color: kPrimaryColor),),
                          Text('Week 4' , style: Styles.textStyle40.copyWith(fontSize: 20 , color: kPrimaryColor),),

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child:  WeeklyLoadingIndicator(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 45),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'NO. Attendance day ',
                                    style: Styles.textStyle152.copyWith(fontSize: 23 ,fontWeight: FontWeight.w400 , color: kPrimaryColor),
                                  ),
                                  SizedBox(height: 15,),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: const Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.blue),
                                          ),
                                          contentPadding: EdgeInsets.all(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'NO. Absence\'s day ',
                                    style: Styles.textStyle152.copyWith(fontSize: 23 ,fontWeight: FontWeight.w400 , color: kPrimaryColor),
                                  ),
                                  const SizedBox(height: 15,),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: const Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.blue),
                                          ),
                                          contentPadding: EdgeInsets.all(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 45),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'NO. Vacation days ',
                                    style: Styles.textStyle152.copyWith(fontSize: 23 ,fontWeight: FontWeight.w400 , color: kPrimaryColor),
                                  ),
                                  SizedBox(height: 15,),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: const Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.blue),
                                          ),
                                          contentPadding: EdgeInsets.all(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'NO. permission\'s  ',
                                    style: Styles.textStyle152.copyWith(fontSize: 23 ,fontWeight: FontWeight.w400 , color: kPrimaryColor),
                                  ),
                                  const SizedBox(height: 15,),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: const Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.blue),
                                          ),
                                          contentPadding: EdgeInsets.all(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 45),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Attendance hours ',
                                    style: Styles.textStyle152.copyWith(fontSize: 23 ,fontWeight: FontWeight.w400 , color: kPrimaryColor),
                                  ),
                                  SizedBox(height: 15,),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: const Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.blue),
                                          ),
                                          contentPadding: EdgeInsets.all(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
