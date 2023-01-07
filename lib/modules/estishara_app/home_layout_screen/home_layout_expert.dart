import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/appointments_screen/appointments.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/edit_profile_screen/edit_exper_profilet.dart';
import 'package:hello_world/modules/estishara_app/expert_profile_screen/expert_profile.dart';
import 'package:hello_world/modules/estishara_app/profile_screen/expert_profile_personal.dart';
import 'package:hello_world/modules/estishara_app/setting_screen/setting.dart';

class HomeLayoutExpert extends StatefulWidget {
  const HomeLayoutExpert({Key? key}) : super(key: key);

  @override
  State<HomeLayoutExpert> createState() => _HomeLayoutExpertState();
}

class _HomeLayoutExpertState extends State<HomeLayoutExpert> {

  var type = Get.arguments;

  int currentIndex = 0;

  List<Widget> screens = [
    Consult(),
    ExpertProfilePersonal(),
    Appointment(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_outlined,
            ),
            label: 'Consult',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.date_range_outlined,
            ),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
