import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/sing_up.dart';
import 'package:hello_world/shared/components/components.dart';

class AddInformation extends StatefulWidget {

  @override
  State<AddInformation> createState() => _AddInformationState();
}

class _AddInformationState extends State<AddInformation> {
  List<String> consult = ['Medical', 'Psychological', 'Economic'];

  String? selectedConsult = 'Medical';

  var experienceController = TextEditingController();

  var phoneNumberController = TextEditingController();

  var addressController = TextEditingController();

  var worktimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add your information:',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                defaultTextFormField(
                  textLable: 'Experience',
                  textInputType: TextInputType.text,
                  controllerText: experienceController,
                  validat: (String value) {
                    if(value.isEmpty){
                      return 'Experience can not be empty';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultTextFormField(
                  textLable: 'Phone Number:',
                  textInputType: TextInputType.phone,
                  controllerText: phoneNumberController,
                  validat: (String value) {
                    if(value.isEmpty){
                      return 'Phone Number can not be empty';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultTextFormField(
                  textLable: 'Address',
                  textInputType: TextInputType.streetAddress,
                  controllerText: addressController,
                  validat: (String value) {
                    if(value.isEmpty){
                      return 'Address can not be empty';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultTextFormField(
                  textLable: 'Worktime',
                  textInputType: TextInputType.text,
                  controllerText: worktimeController,
                  validat: (String value) {
                    if(value.isEmpty){
                      return 'Worktime can not be empty';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Chose your consult:',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                defaultDropdownButtonFormField(
                  items: consult,
                  selectedItem: selectedConsult!,
                  onChange: (item) => setState(() {
                    selectedConsult = item;
                  }),
                  widthBox: 300.0,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    defaultMaterialButton(
                        hight: 25.0,
                        colorMaterialButton: Colors.indigoAccent,
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                        ),
                        borderSideButton: BorderSide.none,
                        onPresse: (){
                          /*Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                            //(route) => false,
                          );*/
                          Get.toNamed('/signup');
                        }
                    ),
                    SizedBox(
                      width: 350.0,
                    ),
                    defaultMaterialButton(
                      hight: 25.0,
                      colorMaterialButton: Colors.indigoAccent,
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      ),
                      borderSideButton: BorderSide.none,
                      onPresse: (){
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Consult(),
                          ),
                          //(route) => false,
                        );*/
                        Get.toNamed('/consult');
                      }
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}