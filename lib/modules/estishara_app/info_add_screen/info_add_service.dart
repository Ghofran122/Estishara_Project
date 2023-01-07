import 'package:hello_world/config/server_config.dart';
import 'package:hello_world/models/info_add.dart';
import 'package:http/http.dart' as http;

class AddInformationService{

  var url =Uri.parse('127.0.0.8000/api/expert/store');

  adtdinfo(AddInformationModels AddInfoModels) async{try {
    var response = await http.post(
      url,
      headers: {
      },
      body: {


      },
    );
  }catch(e){

  }
    /*print(response.statusCode);
    print(response.body);*/
  }
}