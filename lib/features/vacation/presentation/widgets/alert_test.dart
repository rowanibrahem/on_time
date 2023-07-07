import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Title'),
      ),
      body: Container(
        // Your page content here
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              _showAlertDialog(context);
            },
            child: Text('Open Dialog'),
          ),
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // Background content of the page
            Positioned.fill(
              child: Container(
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
            // Alert Dialog
            Center(
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                content: Column(
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
            ),
          ],
        );
      },
    );
  }
}
