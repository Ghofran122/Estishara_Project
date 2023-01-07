import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/config/server_config.dart';
import 'package:hello_world/models/signup.dart';
import 'package:http/http.dart' as http;

class SignupService {
  var url = Uri.parse('http://192.168.43.211:8000/api/register');

  signup(SignupModels SignUpModels) async {
    try {
      var response = await http.post(
        url,
        headers: {},
        body: {
          'name': SignUpModels.name,
          'email': SignUpModels.email,
          'password': SignUpModels.password,
          'password_confirmation': SignUpModels.passwordConfirm,
          'role_is': SignUpModels.role_is
        },
      );
    print(response.statusCode);
      SnackBar signupSnackbar =SnackBar(content:Text('${response.statusCode}') );
    } catch (e) {
      SnackBar signupSnackbar =SnackBar(content:Text('${e}') );
    }
    /*print(response.statusCode);
    print(response.body);*/
  }
}
