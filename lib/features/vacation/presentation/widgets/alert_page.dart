import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      content: Container(
        width: 400,
        height: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.error,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Alert!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'This is an alert message.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),

    );
  }
}

