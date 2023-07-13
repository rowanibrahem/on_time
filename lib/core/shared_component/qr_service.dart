
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:http/http.dart' as http;
class QRCodeScannerScreen extends StatefulWidget {
  const QRCodeScannerScreen({Key? key}) : super(key: key);

  @override
  _QRCodeScannerScreenState createState() => _QRCodeScannerScreenState();
}

class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
  late QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // Username and password variables
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
        ],
      ),
    );
  }

  // Callback function to handle the QR code view
  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        // Extract username and password from QR code data
        // Assuming the data is in the format "username:password"
        final parts = scanData.code!.split(':');
        if (parts.length == 2) {
          username = parts[0];
          password = parts[1];
          // Send GET request immediately after extracting the username and password
          _sendGetRequest(username, password);
        }
      });
    });
  }

  // Function to send the GET request
  Future<void> _sendGetRequest(String username, String password) async {
    final url = Uri.parse('{{domain}}/api/v1/qr');
    final response = await http.get(url);

    // Handle the response as needed
    if (response.statusCode == 200) {
      // Successful response
      final responseData = response.body;
      // TODO: Process the response data
    } else {
      // Error occurred
      final errorMessage = response.body;
      // TODO: Handle the error
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
