import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/config/server_config.dart';
import 'package:hello_world/models/signin.dart';
import 'package:http/http.dart' as http;
import '/models/signin.dart';

class SigninService{

  var url =Uri.parse(ServerConfig.domainNameServer + ServerConfig.SigninUser);

  signin(SigninModels SigninModels) /*async*/ {
    var response = /*await*/ http.post(
      url,
      headers: {

      },
      body: {
        'email': SigninModels.email,
        'email': SigninModels.password,
      },
    );
    /*print(response.statusCode);
    print(response.body);*/
  }
}
