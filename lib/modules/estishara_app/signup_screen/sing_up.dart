import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/info_add_screen/info_add.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/signup_controller.dart';
import 'package:hello_world/shared/components/components.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'signup_service.dart';
import '/models/signup.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var type = Get.arguments;

  var emailController = TextEditingController();

  var nameController = TextEditingController();

  var passwordController = TextEditingController();

  var cPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool expert = false;

  Icon suufIconShow = Icon(
    Icons.visibility_outlined,
    color: Colors.grey[600],
  );

  bool isPasswordShow = true;

  Icon cSuffIconShow = Icon(
    Icons.visibility_outlined,
    color: Colors.grey[600],
  );
   SignupService signup_service_obj =SignupService();
  bool cIsPasswordShow = true;

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
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Creat your account now',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  defaultTextFormField(
                    pIcon: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.black,
                    ),
                    textInputType: TextInputType.name,
                    textLable: 'Name',
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
                    pIcon: Icon(
                      Icons.lock_reset_outlined,
                      color: Colors.black,
                    ),
                    textInputType: TextInputType.visiblePassword,
                    textLable: 'Confirm Password',
                    controllerText: cPasswordController,
                    sIcon: cSuffIconShow,
                    isPass: cIsPasswordShow,
                    onPressPass: (){
                      setState(() {
                        cIsPasswordShow = !cIsPasswordShow;
                        if(cIsPasswordShow == true){
                          cSuffIconShow = Icon(
                            Icons.visibility_outlined,
                            color: Colors.grey[600],
                          );
                        }
                        else{
                          cSuffIconShow = Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.grey[600],
                          );
                        }
                      });
                    },
                    validat: (value) {
                      if(value.isEmpty || cPasswordController != passwordController){
                        return 'password is not the same';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      defaultMaterialButton(
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
                                builder: (context) => AddInformation(),
                              ),
                              //(route) => false,
                            );*/
                            if(type == 'user') {
                              Get.offAndToNamed(
                                  '/homeLayoutUser',
                                  arguments: 'user'
                              );
                              SignupModels sign_up_model_obj =SignupModels(
                                  name: nameController.value.toString(),
                                  email: emailController.value.toString(),
                                  password: passwordController.value.toString(),
                                  passwordConfirm : cPasswordController.value.toString(),
                                role_is: 0.toString()
                              );
                              signup_service_obj.signup(sign_up_model_obj);

                            }
                            else if(type == 'expert') {
                              Get.offAndToNamed(
                                  '/addInformation',
                                  arguments: 'expert'
                              );
                              SignupModels sign_up_model_obj =SignupModels(
                                  name: nameController.value.toString(),
                                  email: emailController.value.toString(),
                                  password: passwordController.value.toString(),
                                  passwordConfirm : cPasswordController.value.toString(),
                                  role_is: 1.toString()
                              );
                              signup_service_obj.signup(sign_up_model_obj);
                              print('forexpert');
                            }
                            //Get.toNamed('/addInformation');
                          }
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                      ),
                      TextButton(
                        onPressed: (){
                          /*Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ),
                                (route) => false,
                          );*/
                          if(type == 'user') {
                            Get.offAndToNamed(
                                '/signin',
                                arguments: 'user'
                            );
                          }
                          else if(type == 'expert') {
                            Get.offAndToNamed(
                                '/signin',
                                arguments: 'expert'
                            );
                          }
                          //Get.offAndToNamed('/signin');
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigoAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
