import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:on_time/features/attendence/presentation/widgets/qr_overlay.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';


import '../../../../constants.dart';
import '../../../../core/utilies/styles.dart';
import 'attendence_result.dart';


class Qr extends StatefulWidget {
  const Qr({Key? key}) : super(key: key);

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  bool isScanCompleted = false;

  void closeScreen() {
    isScanCompleted = false;
  }
  late QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // Username and password variables
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: [
                    ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        color: Colors.blue,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            weight: 100.0,
                          ),
                          onPressed: () {
                            Navigator.pop(
                                context); // Replace with the desired navigation action
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Attendance',
                        style: Styles.textStyle152.copyWith(fontSize: 37 , fontWeight: FontWeight.w700)
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    MobileScanner(
                      onDetect: (BarcodeCapture barcode) {
                        if (!isScanCompleted) {
                          // String code = barcode.rawValue ?? '---';
                          isScanCompleted = true;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AttResult()));
                        };
                      },

                    ),
                     // mode: BarcodeCapture.auto;
                    QRScannerOverlay(overlayColour: Colors.grey.withOpacity(.5),),
                  ],
                )),
            Expanded(
              flex: 4,
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(150.0),
                    child: Column(
                      children: [
                        Text('point camera on QR code',
                          style: Styles.textStyle152.copyWith(fontSize: 30 , color: kPrimaryColor),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 100),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            // width: double.infinity,
                            // height: 50,
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.all(20.0),
                            // minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                            style: Styles.textStyle152.copyWith(fontSize: 30 , fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
