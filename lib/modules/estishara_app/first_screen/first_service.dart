// import 'package:get/get.dart';
// import 'package:hello_world/config/server_config.dart';
// import 'package:hello_world/models/signin.dart';
// import 'package:http/http.dart' as http;
//
// class FirstService{
//
//   var url =Uri.parse('http://192.168.43.211:8000/api/register');
//
//   first(SigninModels SigninModels) async {
//     var response = await http.post(
//       url,
//       headers: {
//
//       },
//       body: {
//         'email': SigninModels.email,
//         'password': SigninModels.password,
//       },
//     );
//     /*print(response.statusCode);
//     print(response.body);*/
//   }
// }