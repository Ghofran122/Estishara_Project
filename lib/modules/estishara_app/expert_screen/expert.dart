import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/models/expert/expert_model.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/expert_profile_screen/expert_profile.dart';
import 'package:hello_world/modules/estishara_app/expert_screen/expert_controller.dart';
import 'package:hello_world/shared/components/components.dart';

class Expert extends StatelessWidget {

  var searchController = TextEditingController();

  List<ExpertModel> users = [
    ExpertModel(
      nameM: 'Ala\'a',
      experiancM: 'Midical advice',
    ),
    ExpertModel(
      nameM: 'Aya',
      experiancM: 'Midical advice',
    ),
    ExpertModel(
      nameM: 'Ali',
      experiancM: 'Midical advice',
    ),
    ExpertModel(
      nameM: 'Ahmad',
      experiancM: 'Midical advice',
    ),
    ExpertModel(
      nameM: 'Eman',
      experiancM: 'Midical advice',
    ),
    ExpertModel(
      nameM: 'Saleh',
      experiancM: 'Midical advice',
    ),
    ExpertModel(
      nameM: 'Malek',
      experiancM: 'Midical advice',
    ),
  ];

  String? expName ='Ahmed yosouf';

  /*Icon profileImageUrl = Icon(
    Icons.person,
    size: 45.0,
    color: Colors.white,
  );*/

  String? experianc ='3 years in pharmasite';

  var type = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 2.0,
        shadowColor: Colors.black,
        leading: IconButton(
          color: Colors.grey[100],
          icon: Icon(
            Icons.arrow_back,
            color: Colors.indigoAccent,
          ),
          onPressed: (){
              /*Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Consult(),
                  ));*/
            if(type == 'user') {
              Get.offAndToNamed(
                  '/homeLayoutUser',
                  arguments: 'user'
              );
            }
            else if(type == 'expert') {
              Get.offAndToNamed(
                  '/homeLayoutExpert',
                  arguments: 'expert'
              );
            }
            //Get.toNamed('/homeLayoutExpert');
            }),
        title: Text(
          'Expert',
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
          top: 25.0,
          //bottom: 20.0,
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
                height: 20.0,
              ),
              TextButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsetsDirectional.zero),
                  overlayColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExpertProfile(),
                    ),
                  );
                  if(type == 'user') {
                    Get.offAndToNamed(
                        '/expertProfile',
                        arguments: 'user'
                    );
                  }
                  else if(type == 'expert') {
                    Get.offAndToNamed(
                        '/expertProfile',
                        arguments: 'expert'
                    );
                  }
                  //Get.toNamed('/expertProfile');
                },
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => expertItem(users[index]),
                  separatorBuilder: (context, index) => SizedBox(),
                  itemCount: users.length,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

  Widget expertItem(ExpertModel users) => defaultExpertItem(
    name: users.nameM,
    experianc: users.experiancM,
    //profileImage: profileImageUrl,
    imageProfile: 'assets/images/profile.png',
  );
}