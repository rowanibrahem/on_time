import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../../constants.dart';
import 'network.dart';
import 'states.dart';
import 'package:http/http.dart' as http;

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(IntialState());

  void logIn({
    required String userName,
    required String password,
  }) async {
    emit(LogInLoadingState());
    try {
      var url = Uri.parse(
          'https://b325d546823f-1625003568173893817.ngrok-free.app/api/v1/user/login');

      var jsonData = {
        'userName': userName,
        'password': password,
      };

      var requestBody = jsonEncode(jsonData);

      Response response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: requestBody,
      );

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData['status'] == true) {
          await CacheNetwork.insertToCashe(
              key: "token", value: responseData['data']['token']);
          await CacheNetwork.insertToCashe(key: "password", value: password);
          token = await CacheNetwork.getCacheData(key: "token");
          emit(LogInSuccessState());
          debugPrint("LogIN Succcessfully, token is : $token");
        } else {
          emit(LogInFailedState(message: responseData['errorMsg']));
          debugPrint("Failed to LogIn : ${responseData['errorMsg']}");
        }
      }
    } catch (e) {
      emit(LogInFailedState(message: "Something went wrong, Try again later"));
    }
  }
}
