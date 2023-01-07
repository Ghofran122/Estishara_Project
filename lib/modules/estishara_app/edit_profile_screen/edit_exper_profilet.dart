import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/shared/components/components.dart';

class EditExpertProfile extends StatefulWidget {

  @override
  State<EditExpertProfile> createState() => _EditExpertProfileState();
}

class _EditExpertProfileState extends State<EditExpertProfile> {

  List<String> consult = ['Medical', 'Psychological', 'Economic'];

  String? selectedConsult = 'Medical';

  var nameController = TextEditingController();

  var experienceController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var phoneNumberController = TextEditingController();

  var addressController = TextEditingController();

  var worktimeController = TextEditingController();

  Icon suufIconShow = Icon(
    Icons.visibility_outlined,
    color: Colors.grey[600],
  );

  bool isPasswordShow = true;

  Icon cSuffIconShow = Icon(
    Icons.visibility_outlined,
    color: Colors.grey[600],
  );

  var type = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          top: 60.0,
          bottom: 50.0,
          start: 20.0,
          end: 20.0,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: defaultCircollerAvatar(
                    ImageProfileAssetsPath: 'assets/images/profile.png',
                    radius: 50.0,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                defaultTextFormField(
                  textInputType: TextInputType.name,
                  textLable: 'Name',
                  pIcon: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                  controllerText: nameController,
                  validat: (String value) {
                    if(value.isEmpty){
                      return 'Name can not be empty';
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
                  pIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                  textInputType: TextInputType.emailAddress,
                  textLable: 'Email',
                  controllerText: emailController,
                  validat: (String value) {
                    if(value.isEmpty){
                      return 'email can not be empty';
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
                  pIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.black,
                  ),
                  textInputType: TextInputType.visiblePassword,
                  textLable: 'Password',
                  controllerText: passwordController,
                  sIcon: suufIconShow,
                  isPass: isPasswordShow,
                  onPressPass: (){
                    setState(() {
                      isPasswordShow = !isPasswordShow;
                      if(isPasswordShow == true){
                        suufIconShow = Icon(
                          Icons.visibility_outlined,
                          color: Colors.grey[600],
                        );
                      }
                      else{
                        suufIconShow = Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.grey[600],
                        );
                      }
                    });
                  },
                  validat: (value) {
                    if(value.isEmpty){
                      return 'password is too short';
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
                  textLable: 'Experience',
                  pIcon: Icon(
                    Icons.wallet_travel_outlined,
                    color: Colors.black,
                  ),
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
                  pIcon: Icon(
                    Icons.phone_outlined,
                    color: Colors.black,
                  ),
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
                  pIcon: Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                  ),
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
                  pIcon: Icon(
                    Icons.access_time_outlined,
                    color: Colors.black,
                  ),
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
                /*defaultDropdownButtonFormField(
                  items: consult,
                  selectedItem: selectedConsult!,
                  onChange: (item) => setState(() {
                    selectedConsult = item;
                  }),
                  widthBox: 300.0,
                ),*/
                Material(
                  elevation: 10.0,
                  shadowColor: Colors.grey[100],
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  child: Container(
                    width: 300.0,
                    height: 50.0,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsetsDirectional.all(8.0),
                      ),
                      value: selectedConsult,
                      items: consult.map(
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
                        selectedConsult = item;
                      }),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: defaultMaterialButtonText(
                    text: Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                    colorMaterialButton: Colors.indigoAccent,
                    onPresse: (){
                      if(type == 'expert') {
                        Get.offAndToNamed(
                            '/homeLayoutExpert',
                            arguments: 'expert'
                        );
                      }
                      //Get.offAndToNamed('/homeLayoutExpert');
                    },
                    //borderSideButton: BorderRadius.circular(20.0),
                    hight: 45.0,
                    weidth: 120.0,
                  ),
                ),
                /*Center(
                  child: defaultMaterialButton(
                      hight: 55.0,
                      weidth: 140.0,
                      colorMaterialButton: Colors.indigoAccent,

                      icon: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 50,
                      ),
                      borderSideButton: BorderSide.none,
                      onPresse: () {
                        *//*Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => Consult(),
                        ),
                        //(route) => false,
                        );*//*
                        Get.offAndToNamed('/homeLayoutExpert');
                      }
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
