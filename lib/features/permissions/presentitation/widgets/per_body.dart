import 'package:flutter/material.dart';
import 'package:on_time/constants.dart';
import '../../../../core/utilies/assets.dart';
import '../../../../core/utilies/styles.dart';


class PermissionBody extends StatefulWidget {
  const PermissionBody({Key? key}) : super(key: key);

  @override
  State<PermissionBody> createState() => _PermissionBodyState();
}

class _PermissionBodyState extends State<PermissionBody> {
  String _selectedItem = '1';
  List<String> _dropdownItems = ['1' , '2' , '3' ,'4','5','6','7','8','9','10'];


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetData.backGround),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                          Icons.hourglass_bottom_outlined,
                          color: kPrimaryColor,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'No. hours',
                        style: Styles.textStyle152.copyWith(fontSize: 20 , color: kPrimaryColor),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.elliptical(10, 10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Set the shadow color
                            spreadRadius: 2, // Set the spread radius of the shadow
                            blurRadius: 6, // Set the blur radius of the shadow
                            offset: Offset(0, 3), // Set the offset of the shadow
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 150,
                         child: DropdownButtonFormField<String>(
                           decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(
                                 color: Colors.white.withOpacity(.2),
                                 // width: 2,
                               ),
                               borderRadius: BorderRadius.circular(25),
                             ),
                             border: InputBorder.none,
                           ),
                          icon: const Icon(
                            Icons.arrow_drop_down_circle ,
                            color: kPrimaryColor,
                            size: 30,
                          ),

                          value: _selectedItem,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedItem = newValue!;
                            });
                          },
                          items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Center(
                                child: Text(
                                    value,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey
                                  ),
                                  // textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
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
                  'permission details',
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
            Center(
              child: ElevatedButton(
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
                                      'Your permission is pending',
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
            ),
          ],
        ),
      ),
    );
  }
}
