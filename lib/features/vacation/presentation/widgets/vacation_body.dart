import 'package:flutter/material.dart';

import '../../../../core/utilies/styles.dart';
import 'alert_page.dart';

class VacationBody extends StatefulWidget {
  const VacationBody({Key? key}) : super(key: key);

  @override
  State<VacationBody> createState() => _VacationBodyState();
}

class _VacationBodyState extends State<VacationBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('From'),
            Text('To')
          ],
        ),
        //datapacker
        SizedBox(
          height: 100,
        ),
        Align(alignment: Alignment.centerLeft,child: Text('Vacation details')),
        SizedBox(height: 20,),
        TextField(
            maxLines: 15, // Allow unlimited lines
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              ),
            ),
          ),
        SizedBox(height: 50,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(50, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            // width: double.infinity,
            // height: 50,
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(20.0),
            // minimumSize: Size(150, 50),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  AlertPage(),
              ),
            );
          },
          child: Text(
            'Submit',
            style: Styles.textStyle40.copyWith(fontSize: 30 , color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
