import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult_controller.dart';
import 'package:hello_world/modules/estishara_app/expert_profile_screen/expert_profile.dart';
import 'package:hello_world/modules/estishara_app/expert_screen/expert.dart';
import 'package:hello_world/modules/estishara_app/profile_screen/user_profile_personal.dart';
import 'package:hello_world/shared/components/components.dart';

class Consult extends StatefulWidget {

  @override
  State<Consult> createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  var type = Get.arguments;

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 2.0,
        shadowColor: Colors.black,
        title: Text(
          'Consult',
          style: TextStyle(
            fontSize: 27.0,
            //fontStyle: FontStyle.italic,
            //letterSpacing: 1.0,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 20.0,
          end: 20.0,
          top: 25.0,
          bottom: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              defaultTextFormField(
                boxWidth: 400.0,
                boxHeight: 35.0,
                boxColor: Colors.white24,
                textLable: 'Search',
                pIcon: Icon(
                  Icons.search,
                  size: 18.0,
                  color: Colors.black45,
                ),
                textInputType: TextInputType.text,
                controllerText: searchController,
                validat: (String value){
                  if(value.isEmpty){
                    print('Search should not be empty');
                  }
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              defaultTextButton(
                titleAdvice: 'Medical advice',
                onPressTB: (){
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Expert(),
                    ),
                  );*/
                  if(type == 'user') {
                    Get.offAndToNamed(
                        '/expert',
                        arguments: 'user'
                    );
                  }
                  else if(type == 'expert') {
                    Get.offAndToNamed(
                        '/expert',
                        arguments: 'expert'
                    );
                  }
                  //Get.toNamed('/expert');
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              defaultTextButton(
                titleAdvice: 'Psychological advice',
                onPressTB: (){
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Expert(),
                    ),
                  );*/
                  if(type == 'user') {
                    Get.offAndToNamed(
                        '/expert',
                        arguments: 'user'
                    );
                  }
                  else if(type == 'expert') {
                    Get.offAndToNamed(
                        '/expert',
                        arguments: 'expert'
                    );
                  }
                  //Get.toNamed('/expert');
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              defaultTextButton(
                titleAdvice: 'Economic advice',
                onPressTB: (){
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Expert(),
                    ),
                  );*/
                  if(type == 'user') {
                    Get.offAndToNamed(
                        '/expert',
                        arguments: 'user'
                    );
                  }
                  else if(type == 'expert') {
                    Get.offAndToNamed(
                        '/expert',
                        arguments: 'expert'
                    );
                  }
                  print(type);
                  //Get.toNamed('/expert');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
