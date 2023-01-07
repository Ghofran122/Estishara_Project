import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/expert_screen/expert.dart';
import 'package:hello_world/shared/components/components.dart';
import 'package:intl/intl.dart';

class ExpertProfile extends StatelessWidget {

  var scaffoldKey = GlobalKey<ScaffoldState>();

  var dateController = TextEditingController();

  var timeController = TextEditingController();

  bool isBottomSheetShown =false;

  var type = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[100],
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
                    builder: (context) => Expert(),
                  ));*/
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
            }),
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 27.0,
            //fontStyle: FontStyle.italic,
            //letterSpacing: 1.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
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
                  alignment: AlignmentDirectional.centerEnd,
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
                          children: [
                            Text(
                              '900\$',
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
                          '       Book appintment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                        onPresse: (){
                          scaffoldKey.currentState!.showBottomSheet((context) => Container(
                            color: Colors.grey[200],
                            height: 300.0,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  defaultTextFormField(
                                    textLable: 'date',
                                    textInputType: TextInputType.text,
                                    controllerText: dateController,
                                    pIcon: Icon(
                                      Icons.date_range_outlined,
                                      color: Colors.black,
                                    ),
                                    onTap: (){
                                      showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime.parse('2023-02-08'),
                                      ).then((value) {
                                        dateController.text = DateFormat.yMMMd().format(value!);
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  defaultTextFormField(
                                    textLable: 'time',
                                    textInputType: TextInputType.text,
                                    controllerText: timeController,
                                    pIcon: Icon(
                                      Icons.access_time_outlined,
                                      color: Colors.black,
                                    ),
                                    onTap: (){
                                      showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                      ).then((value) {
                                        timeController.text = value!.format(context).toString();
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 35.0,
                                  ),
                                  defaultMaterialButton(
                                    icon: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 32.0,
                                    ),
                                    onPresse: (){

                                    },
                                    colorMaterialButton: Colors.indigoAccent,
                                    hight: 50.0,
                                    weidth: 75.0,
                                  ),
                                ],
                              ),
                            ),
                          ),);
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
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultTextField(
                  discribtionText: 'Experience:',
                  text: '3 years of work in the field of pharmacy',
                fieldHeight: 60.0,
              ),
          /*Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 20.0,
                    bottom: 6.0
                ),
                child: Text(
                  'Experience:',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Material(
                color: Colors.white,
                elevation: 10.0,
                borderRadius: BorderRadiusDirectional.circular(30.0),
                shadowColor: Colors.grey[100],
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    //border: BoxBorder(BorderSide.none),
                  ),
                  height: 60.0,
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.only(
                    start: 20.0,
                    end: 10.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3 years of work in the field of pharmacy',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),*/
              SizedBox(
                height: 20.0,
              ),
              defaultTextField(
                  discribtionText: 'Phone Number:',
                  text: '+2334567890',
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultTextField(
                discribtionText: 'Address:',
                text: 'New York, America',
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultTextField(
                discribtionText: 'Worktime:',
                text: 'Mon to Wed from 08:00 AM to 04:00 PM',
                fieldHeight: 60.0
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultTextField(
                discribtionText: 'Consultation provided:',
                text: 'Medical',
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
