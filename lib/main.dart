/*import 'dart:ffi';

import 'package:hello_world/modules/bmi_app/bmi_screen/bmi_screen.dart';
import 'package:hello_world/modules/bmi_app/home/home.dart';
import 'package:hello_world/modules/bmi_app/home_screen/home_screen.dart';
import 'package:hello_world/modules/bmi_app/inc_dec/inc_dec.dart';
import 'package:hello_world/modules/bmi_app/login_screen/login_screen.dart';
import 'package:hello_world/modules/bmi_app/messenger_screen/messenger_screen.dart';*/
import 'package:flutter/material.dart';
import 'package:hello_world/getx_bindings/consult_binding.dart';
import 'package:hello_world/getx_bindings/expert_binding.dart';
import 'package:hello_world/getx_bindings/info_add_binding.dart';
import 'package:hello_world/getx_bindings/signin_binding.dart';
import 'package:hello_world/getx_bindings/signup_binding.dart';
import 'package:hello_world/modules/bmi_app/model_class/model_class.dart';
import 'package:hello_world/modules/estishara_app/add_appointment_screen/add_appointment.dart';
import 'package:hello_world/modules/estishara_app/appointments_screen/appointments.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/edit_profile_screen/edit_exper_profilet.dart';
import 'package:hello_world/modules/estishara_app/expert_profile_screen/expert_profile.dart';
import 'package:hello_world/modules/estishara_app/expert_screen/expert.dart';
import 'package:hello_world/modules/estishara_app/first_screen/first.dart';
import 'package:hello_world/modules/estishara_app/home_layout_screen//home_layout_expert.dart';
import 'package:hello_world/modules/estishara_app/home_layout_screen//home_layout_user.dart';
import 'package:hello_world/modules/estishara_app/info_add_screen/info_add.dart';
import 'package:hello_world/modules/estishara_app/profile_screen/expert_profile_personal.dart';
import 'package:hello_world/modules/estishara_app/profile_screen/user_profile_personal.dart';
import 'package:hello_world/modules/estishara_app/setting_screen/setting.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/sing_up.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      /*home:
      First(),*/
      initialRoute: '/first',
      getPages: [
        GetPage(name: '/first', page: () => First(),),
        GetPage(name: '/signin', page: () => SignIn(), binding: SigninBinding()),
        GetPage(name: '/signup', page: () => SignUp(), binding: SignupBinding()),
        GetPage(name: '/setting', page: () => Setting()),
        GetPage(name: '/addInformation', page: () => AddInformation(), binding: AddInformationBinding()),
        GetPage(name: '/homeLayoutExpert', page: () => HomeLayoutExpert()),
        GetPage(name: '/homeLayoutUser', page: () => HomeLayoutUser()),
        GetPage(name: '/consult', page: () => Consult(), binding: ConsultBinding()),
        GetPage(name: '/userProfilePersonal', page: () => UserProfilePersonal(),),
        GetPage(name: '/expertProfilePersonal', page: () => ExpertProfilePersonal(),),
        GetPage(name: '/editExpertProfile', page: () => EditExpertProfile()),
        GetPage(name: '/expert', page: () => Expert(),),
        GetPage(name: '/expertProfile', page: () => ExpertProfile(),),
        GetPage(name: '/reservayions', page: () => Appointment(),),

      ],
    );
  }

}
