/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/shared/components/components.dart';

class AddAppointment extends StatefulWidget {

  @override
  State<AddAppointment> createState() => _AddAppointmentState();
}

class _AddAppointmentState extends State<AddAppointment> {

  var dateController = TextEditingController();

  var timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              */
/*Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Expert(),
                  ));*//*

              Get.toNamed('/expertProfile');
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
    );
  }
}
*/
