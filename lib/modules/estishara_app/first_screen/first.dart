import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin_controller.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/signup_controller.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/sing_up.dart';
import 'package:hello_world/shared/components/components.dart';

class First extends StatefulWidget {

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  List<String> types = ['user', 'expert'];
  String? selectedType = 'user';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Estishara',
            style: TextStyle(
              fontSize: 75.0,
              color: Colors.indigoAccent
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Use application as:',
                  style: TextStyle(
                      fontSize: 25.0
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                /*defaultDropdownButtonFormField(
                  items: types,
                  selectedItem: selectedType!,
                  onChange: (item) => setState(() {
                    selectedType = item;
                  }),
                ),*/
            Material(
              elevation: 10.0,
              shadowColor: Colors.grey[100],
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
              child: Container(
                width: 150.0,
                height: 50.0,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsetsDirectional.all(8.0),
                  ),
                  value: selectedType,
                  items: types.map(
                          (item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      )
                  ).toList(),
                  onChanged: (item) => setState(() {
                     selectedType = item;
                  }),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
              ],
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          defaultMaterialButtonText(
              colorMaterialButton: Colors.indigoAccent,
              text: Text(
                'Start',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              hight: 50.0,
              borderSideButton: BorderSide.none,
              onPresse: (){
                if(selectedType == 'user') {
                  Get.offAndToNamed(
                      '/signin',
                      arguments: 'user'
                  );
                }
                else if(selectedType == 'expert') {
                  Get.offAndToNamed(
                      '/signin',
                      arguments: 'expert'
                  );
                }
              }
          ),
        ],
      ),
    );
  }
}



/*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Consult(
                      type: selectedType,
                    ),
                  ),
                  //(route) => false,
                );*/