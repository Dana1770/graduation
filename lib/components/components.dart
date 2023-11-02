import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

var user_name=TextEditingController();
Widget build_icon(String p1, String p2 ){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 10),
          child: ElevatedButton(onPressed: () {

          },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Colors.white),
              iconSize: MaterialStateProperty.all(70),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(image: NetworkImage(
                  p1),
                fit: BoxFit.cover, height: 150, width: 145,),
            ),),
        ),
        ElevatedButton(onPressed: () {

        },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Colors.white),
            iconSize: MaterialStateProperty.all(100),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image(image: NetworkImage(
                p2),
              fit: BoxFit.cover, height: 150, width: 145,),
          ),),
      ],
    ),
  ) ;

}
Widget Large_image(String t)=> Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Image(image:AssetImage(t)));
Widget small_image(String t)=>Container(
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
  clipBehavior: Clip.antiAliasWithSaveLayer,
  child: Image(image: AssetImage(t),
    height: 120,
    width: 120,

  ),
);
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmite,
  Function(String)? onChange,
  VoidCallback? onTap,
  bool isPassword = false,
  validate,
  String? lable,
  IconData? prefx,
  Widget? suffix,
  VoidCallback? suffixPassword,
  Color? fillcolor,
  bool? Isfilled,
  double borderradius = 4.0,
  String hint = " ",
  Color? iconColor,
  Color? textColor,
  double w=0,
}) =>
    TextFormField(
      
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onTap: onTap,
      onChanged: onChange,
      onFieldSubmitted: onSubmite,
      validator: validate,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(w),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.orange[900]),
          labelStyle:  TextStyle(color: Colors.black),
          fillColor: fillcolor,
          filled: Isfilled,
          labelText: lable,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide:  BorderSide(
              color: Colors.orange,

            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide:  BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          prefixIcon: prefx == null
              ? null
              : Icon(
            prefx,
            color: iconColor,
          ),
         suffix: suffix,



          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderradius)))),
    );
Future navigateAndFinish (context,widget)=>
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(
            builder: (context)=>widget),
            (Route<dynamic>route)=>false);
Widget divider()=>Divider(indent: 10,height: 10,color: Colors.black,endIndent: 50,thickness: 4,);