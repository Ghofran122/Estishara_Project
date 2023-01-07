import 'package:flutter/material.dart';
import 'package:hello_world/modules/estishara_app/expert_profile_screen/expert_profile.dart';

Widget defaultTextFormField({
  required String textLable,
  Icon? pIcon,
  required TextInputType textInputType,
  TextEditingController? controllerText,
  bool isClickedAble = true,
  Function? validat,
  void Function(String?)? onChang,
  bool isPass = false,
  Icon? sIcon,
  Function? onPressPass,
  Function? onTap,
  double boxWidth = double.infinity,
  double boxHeight = 100,
  Color boxColor = Colors.white,
}) => Material(
  elevation: 10.0,
  borderRadius: BorderRadiusDirectional.circular(30.0),
  shadowColor: Colors.grey[100],
  child: TextFormField(
    controller: controllerText,
    onChanged: onChang,
    onTap: (){
      onTap!();
    },
    validator: (value){
      validat!
        (value);
    },
    decoration: InputDecoration(
      labelText: textLable,
      labelStyle: TextStyle(
        fontStyle: FontStyle.italic,
        color: Colors.grey[400],
      ),
      constraints: BoxConstraints(
        maxWidth: boxWidth,
        maxHeight: boxHeight,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide.none,
      ),
      prefixIcon: pIcon,
      suffixIcon: sIcon != null ? IconButton(
        onPressed: (){
          onPressPass!();
        },
        icon: sIcon) : null,
      filled: true,
      fillColor: boxColor,
    ),
    keyboardType: textInputType,
    obscureText: isPass,
    enabled: isClickedAble,
  ),
);

Widget defaultMaterialButton({
  Color? colorMaterialButton,
  required Icon icon,
  double weidth = 50.0,
  double hight = 10.0,
  BorderSide borderSideButton = BorderSide.none,
  required Function onPresse,
}) => MaterialButton(
  height: hight,
  onPressed: (){
      onPresse();
    },
  color: colorMaterialButton,
  child: icon,
  shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: borderSideButton,
  ),
  minWidth: weidth,
);

Widget defaultCircollerAvatar({
  double radius = 22.0,
  Icon? imageProfile,
  String? ImageProfileAssetsPath,
  double? minRadius,
  Function? ontap,
}) => GestureDetector(
  onTap: (){
    ontap!();
  },
  child:   CircleAvatar(
    maxRadius: radius,
    //backgroundImage: ExactAssetImage(imageProfile),
    backgroundColor: Colors.grey[300],
    child: imageProfile,
    backgroundImage: ExactAssetImage(ImageProfileAssetsPath!),
    minRadius: minRadius,
  ),
);

Widget defaultExpertItem({
  //required Icon profileImage,
  required name,
  required experianc,
  String? imageProfile,
}) => Column(
  children: [
    Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 4.0,
        bottom: 4.0,
        start: 8.0,
        end: 8.0,
      ),
      child: Container(
        height: 60.0,
        child: Row(
          children: [
            defaultCircollerAvatar(
              //imageProfile: profileImage,
              ImageProfileAssetsPath: imageProfile,
              radius: 25.0,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 4.0,
                bottom: 4.0,
                start: 8.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsetsDirectional.only(
                        top: 6.0,
                      ),
                      child: Text(
                        experianc,
                        style: TextStyle(
                          color: Colors.black,
                          //fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
/*    SizedBox(
      height: 4.0,
    ),*/
    Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 60.0,
        top: 5.0,
        bottom: 5.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.indigoAccent,
      ),
    ),
  ],
);

Widget defaultTextButton({
  required String titleAdvice,
  required Function onPressTB,
  double widthButton = double.infinity,
  double? heightButton,
}) => Material(
  elevation: 10.0,
  child: Container(
    width: widthButton,
    height: heightButton,
    //padding: EdgeInsetsDirectional.all(0.0),
    decoration: BoxDecoration(
      border: Border.all(
        style: BorderStyle.none,
      ),
      color: Colors.indigoAccent,
    ),
    child: TextButton(
        onPressed: (){
          onPressTB();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              titleAdvice,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
    ),
  ),
);

Widget defaultDropdownButtonFormField({
  required String selectedItem,
  required List<String> items,
  required Function onChange,
  double? widthBox = 150.0,
  double? heightBox = 50.0,
}) => Material(
  elevation: 10.0,
  shadowColor: Colors.grey[100],
  borderRadius: BorderRadius.circular(30.0),
  color: Colors.white,
  child: Container(
    width: widthBox,
    height: heightBox,
    child: DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsetsDirectional.all(8.0),
      ),
      value: selectedItem,
      items: items.map(
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
      onChanged: (item) {
        onChange();
      },
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
);

Widget defaultTextField({
  required String text,
  String? discribtionText,
  double? fieldWidth = double.infinity,
  double? fieldHeight = 45.0,
}) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsetsDirectional.only(
          start: 20.0,
          bottom: 6.0
      ),
      child: Text(
        discribtionText!,
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
        height: fieldHeight,
        width: fieldWidth,
        padding: EdgeInsetsDirectional.only(
          start: 20.0,
          end: 10.0,
          top: 5.0
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
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
);

Widget defaultMaterialButtonText({
  Color? colorMaterialButton,
  required Text text,
  double weidth = 50.0,
  double hight = 10.0,
  BorderSide borderSideButton = BorderSide.none,
  required Function onPresse,
}) => MaterialButton(
  height: hight,
  onPressed: (){
    onPresse();
  },
  color: colorMaterialButton,
  child: text,
  shape: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: borderSideButton,
  ),
  minWidth: weidth,
);

Widget defaultAppointmenttItem({
  //required Icon profileImage,
  required date,
  required time,
}) => Column(
  children: [
    Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 8.0,
        bottom: 4.0,
        start: 8.0,
        end: 8.0,
      ),
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 4.0,
            bottom: 4.0,
            start: 8.0,
          ),
          child: Row(
            children: [
              Container(
                height: 65.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.indigoAccent,
                ),
                child: Icon(
                  Icons.date_range_outlined,
                  color: Colors.white,
                ),
                /*Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            //fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),*/
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 19.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 9.0,
                  ),
                  Container(
                    child: Text(
                      time,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        //fontWeight: FontWeight.w400,
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
    SizedBox(
      height: 10.0,
    ),
    Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 82.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.indigoAccent,
      ),
    ),
  ],
);