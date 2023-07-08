import 'package:flutter/material.dart';
import 'package:on_time/core/utilies/styles.dart';

import '../../../../constants.dart';
import '../../../../core/shared_component/app_bar2.dart';

class NoticesPage extends StatelessWidget {
   NoticesPage({Key? key}) : super(key: key);
  final List<String> items = [
    'There is an allowance until 9:00 A.M',
    '5 L.E  has been deducted from your salary',
    'Your accounts have been updated for this month',
    'There is an allowance until 9:00 A.M',
    'There is an allowance until 9:00 A.M',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget2(text: 'Notices',),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                margin: EdgeInsets.only(top: 10),
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                  trailing: Icon(Icons.more_horiz, color: Color(0xFF1E2B81)),
                  title: Text(
                    items[index],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
