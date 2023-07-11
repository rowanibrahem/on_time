import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:on_time/constants.dart';
import '../../../../core/utilies/assets.dart';
import '../../../../core/utilies/styles.dart';


class VacationBody extends StatefulWidget {
  const VacationBody({Key? key}) : super(key: key);

  @override
  State<VacationBody> createState() => _VacationBodyState();
}

class _VacationBodyState extends State<VacationBody> {
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
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 45),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: Styles.textStyle152.copyWith(fontSize: 15 , color: kPrimaryColor),
                      ),
                      SizedBox(height: 5,),
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
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'To',
                        style: Styles.textStyle152.copyWith(fontSize: 15 , color: kPrimaryColor),
                      ),
                      SizedBox(height: 5,),
                      SizedBox(
                        width: 250,
                        child: TextField(
                          controller: _toDateController,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2070),
                            );
                            if (pickedDate != null) {
                              setState(() {
                                _toDateController.text =
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Vacation details',
                style: Styles.textStyle152
                    .copyWith(fontSize: 20, color: kPrimaryColor),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                maxLines: 13,
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
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(100, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(20.0),
            ),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => AlertPage(),
              //   ),
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      content: Container(
                        width: 300,
                        height: 200,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 40.0,
                                backgroundColor: kPrimaryColor,
                                child: Icon(
                                  Icons.check_sharp,
                                  size: 60.0,
                                  weight: 100,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                'Your vacation is pending',
                                  style: Styles.textStyle152.copyWith(color: kPrimaryColor , fontSize: 20 , fontWeight: FontWeight.bold )
                              ),

                            ],
                          ),
                        ),
                      ),

                    );
                  }
              );
            },
            child: Text(
              'Submit',
              style: Styles.textStyle40
                  .copyWith(fontSize: 30, color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
