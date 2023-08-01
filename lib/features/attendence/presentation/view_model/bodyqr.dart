// import 'dart:convert';
//
// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
//
//
//
//
// import '../../../../constants.dart';
// import 'network.dart';
// import 'statesqr.dart';
// import 'package:http/http.dart' as http;
//
// class AuthCubitQr extends Cubit<AuthStatesQr> {
//   AuthCubitQr() : super(IntialState());
//   String? userNameData;
//   void QrLogin({
//     required String userName,
//     required String password,
//     required BuildContext context,
//     // required Function sfunction,
//   }) async {
//     emit(QrLoadingState());
//     try {
//       var url = Uri.parse(
//           scannedQrCode.toString(),
//       );
//       print("111");
//
//       // var jsonData = {
//       //   'userName': userName,
//       //   'password': password,
//       // };
//
//       // var requestBody = jsonEncode(jsonData);
//
//       Response response = await http.post(
//         url,
//         headers: {'Content-Type': 'application/json' , 'Authorization':token!},
//         // body: requestBody,
//       );
//       print(response.statusCode);
//
//       // var pref = await SharedPreferences.getInstance();
//       if (response.statusCode == 200) {
//         // var responseData = jsonDecode(response.body);
//         print('cccccc');
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => NewPage(qrCode: scannedQrCode)),
//         );
//           // await CacheNetwork.insertToCashe(key: "token", value: responseData['data']['token']);
//          // print(responseData['data']['token']);
//          // await CacheNetwork.insertToCashe(key: "password", value: password);
//           //token = await CacheNetwork.getCacheData(key: "token");
//           emit(QrSuccessState());
//           debugPrint("LogIN Succcessfully, token is : $token");
//           // pref.setString("token", responseData['token']);
//           // pref.setString("userName",responseData['userName']);
//           // pref.setString("password",responseData['password']);
//           // sfunction();
//       }  else {
//         emit(QrFailedState(message: "Incorrect Username or Password "));
//         print("else");
//       }
//     } catch (e) {
//       emit(QrFailedState(message: "Something went wrong, Try again later"));
//       print("fgghh");
//     }
//   }
// }