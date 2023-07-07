import 'package:flutter/material.dart';
import 'package:on_time/core/utilies/styles.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'dart:io';


import '../../../../constants.dart';
import 'attendence_result.dart';


class QrCode extends StatefulWidget {
  QrCode({Key? key}) : super(key: key);

  State<QrCode> createState() => _QrCodeState();

}

class _QrCodeState extends State<QrCode> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? barCode;
  QRViewController? controller;
  String qrText = '';

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Positioned(
              top: 16,
              left: 16,
              child: Row(
                children: [
                  ClipOval(
                    child: Container(
                      width: 40,
                      height: 40,
                      color: kPrimaryColor,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          weight: 100.0,
                        ),
                        onPressed: () {
                          Navigator.pop(context); // Replace with the desired navigation action
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
            Column(
              children: [
                const Text(
                  'Attendance',
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 400,
                        width: 400,
                        child: buildQRView(context)
                    ),
                    Positioned(
                      bottom: 10.0,
                      child: buildResult(),
                    ),
                  ],
                ),

                SizedBox(height: 20.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50 , 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    // width: double.infinity,
                    // height: 50,
                    backgroundColor: kPrimaryColor,
                    padding: const EdgeInsets.all(20.0),
                    // minimumSize: Size(150, 50),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: Styles.textStyle40.copyWith(fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQRView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderRadius: 10,
        borderLength: 20,
        borderWidth: 10,
        cutOutSize: MediaQuery.of(context).size.width * .8,
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((barCode) {
      setState(() {
        this.barCode = barCode;
        if (barCode.code != null) {
          // Navigate to the new page after scanning
          navigateToNewPage(barCode.code!);
        }
      });
    });
  }

  Widget buildResult() => Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white24,
    ),
    child: Text(
      barCode != null ? 'Result : ${barCode!.code}' : 'point camera on QR code !',
      maxLines: 3,
    ),
  );



  void navigateToNewPage(String qrCode) {
    // Navigate to the new page with the scanned QR code as a parameter
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AttResult()),
    );
  }
}
