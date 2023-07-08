// import 'package:flutter/material.dart';
// import 'package:quickalert/widgets/quickalert_dialog.dart';
//
// class AlertPageTest extends StatelessWidget {
//   const AlertPageTest({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return QuickAlert.show(
//       context: context,
//       type: QuickAlertType.success,
//       text: 'Transaction Completed Successfully!',
//       autoCloseDuration: const Duration(seconds: 2),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class Test extends StatelessWidget {
//   const Test({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return showDialog(
//         context: context,
//         builder: (BuildContext context){
//           return AlertDialog(
//             title: Text('Dialog Title'),
//             content: Text('This is the content of the dialog.'),
//             actions: [
//               TextButton(
//                 child: Text('Close'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           );
//         }
//     );
//   }
// }
//
