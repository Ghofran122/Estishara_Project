import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/shared/components/components.dart';

class ExpertProfilePersonal extends StatelessWidget {

  var type = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 2.0,
        shadowColor: Colors.black,
        /*leading: IconButton(
            color: Colors.grey[100],
            icon: Icon(
              Icons.arrow_back,
              color: Colors.indigoAccent,
            ),
            onPressed: (){
              *//*Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Expert(),
                  ));*//*
              if(type == 'expert') {
                Get.offAndToNamed(
                  '/consult',
                  arguments: 'expert',
                );
              }
              //Get.toNamed('/consult');
            }),*/
        title: Text(
          'Your Profile',
          style: TextStyle(
            fontSize: 27.0,
            //fontStyle: FontStyle.italic,
            //letterSpacing: 1.0,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(type == 'expert') {
            Get.offAndToNamed(
                '/editExpertProfile',
                arguments: 'expert'
            );
          }
          //Get.offAndToNamed('/editExpertProfile');
        },
        child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: defaultCircollerAvatar(
                      ImageProfileAssetsPath: 'assets/images/profile.png',
                      radius: 50.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: [
                        Material(
                          elevation: 10.0,
                          shadowColor: Colors.grey[100],
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white,
                            ),
                            padding: EdgeInsetsDirectional.only(
                              top: 0.0,
                              bottom: 0.0,
                              start: 13.0,
                              end: 15.0,
                            ),
                            height: 40.0,
                            width: 180.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '19\$',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        /*defaultCircollerAvatar(
                      ImageProfileAssetsPath: 'assets/images/profile.png',
                      radius: 50.0,
                    ),*/
                        Container(
                          width: 120.0,
                          child: defaultMaterialButtonText(
                              text: Text(
                                'Your balance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                              onPresse: (){
                                Get.toNamed('/addAppointment');
                              },
                              colorMaterialButton: Colors.indigoAccent,
                              weidth: 50.0,
                              hight: 40.0
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 15.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Name:',
                    text: 'Aya Hammad',
                    //fieldHeight: 80.0
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Email:',
                    text: 'Aya@gmail.com',
                    //fieldHeight: 80.0
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Password:',
                    text: '**********',
                    //fieldHeight: 80.0
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Experience:',
                    text: '3 years of work in the field of pharmacy',
                    fieldHeight: 60.0
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Phone Number:',
                    text: '+2334567890',
                    //fieldHeight: 80.0
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Address:',
                    text: 'New York, America',
                    //fieldHeight: 80.0
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Worktime:',
                    text: 'Mon to Wed from 08:00 AM to 04:00 PM',
                    //fieldHeight: 80.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Consultation provided:',
                    text: 'Medical',
                    //fieldHeight: 80.0
                  ),
                  /*SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: defaultTextButton(
                      titleAdvice: 'reservayions',
                      widthButton: 200.0,
                      onPressTB: (){
                        *//*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Expert(),
                          ),
                        );*//*
                        Get.toNamed('/reservayions');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Center(
                    child: defaultTextButton(
                      titleAdvice: 'Log out',
                      widthButton: 150.0,
                      onPressTB: (){
                        *//*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Expert(),
                          ),
                        );*//*
                        Get.offAndToNamed('/first');
                      },
                    ),
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
