import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/config/server_config.dart';
import 'package:hello_world/models/signin.dart';
import 'package:http/http.dart' as http;
import '/models/signin.dart';

class SigninService {
  var url = Uri.parse('http://192.168.43.211:8000/api/login');
  signin(SigninModels SigninModels) async {
    try {
      var response = await http.post(
        url,
        headers: {
          'Accept':'application/json'
        },
        body: {
          'email': SigninModels.email.toString(),
          'password': SigninModels.password.toString(),
         // 'role_is':'0',
        },
      );
      print(response.body.toString());
      SnackBar signupSnackbar =SnackBar(content:Text('${response.statusCode}') );
    } catch (e) {
      SnackBar signupSnackbar =SnackBar(content:Text('${e.toString()}') );
    }
    /*print(response.statusCode);
    print(response.body);*/
  }
}
