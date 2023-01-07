import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:hello_world/models/appointment.dart';
import 'package:hello_world/shared/components/components.dart';

class Appointment extends StatelessWidget {

  List<AppointmentModel> appoint = [
    AppointmentModel(
      date: 'Jan 19,2023',
      time: '11:03 AM',
    ),
    AppointmentModel(
      date: 'Jan 19,2023',
      time: '12:03 PM',
    ),
    AppointmentModel(
      date: 'Jan 20,2023',
      time: '01:03 PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 2.0,
        shadowColor: Colors.black,
        title: Text(
          'Appointment',
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
          top: 12.0
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => appintmentItem(appoint[index]),
                separatorBuilder: (context, index) => SizedBox(),
                itemCount: appoint.length,
              ),
            ],
          ),
        ),
      )
    );
  }

  Widget appintmentItem(AppointmentModel appoint) => defaultAppointmenttItem(
    date: appoint.date,
    time: appoint.time,
  );
}
