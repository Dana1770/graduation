import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';
import '../sign up/sign up.dart';
import '../verification/verification.dart';



class Main extends StatefulWidget{
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  bool is_pass=false;
  final Formkey=GlobalKey<FormState>();
  @override
  void initState() {

    super.initState();
  }
  var email_controller=TextEditingController();

  var password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding:  EdgeInsets.only(top: 55.0,left: 30,right: 30,bottom: 3),

                child: Form(
                  key: Formkey,
                  child: Column(
                      children: [

                         Container(
                            color: Colors.white,
                            alignment: Alignment.topCenter,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Text("Prakinson",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 35,
                                        letterSpacing: 7,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Tilt Neon'

                                      ),),
                                    SizedBox(height: 12,),
                                    small_image("images/3.jpg"),
                                    TextButton(onPressed: (){}, child: Row(
                                      children: [
                                        Image(image: AssetImage("images/google.png"),height: 20,width: 25,),
                                        SizedBox(width: 5,),
                                        Text("Login with Google",style: TextStyle(fontSize: 16,),),
                                      ],
                                    )),
                                    TextButton(onPressed: (){}, child: Row(
                                     children: [
                                       Image(image: AssetImage("images/facebook.png"),height: 20,width: 25,),
                                      // Icon(Icons.facebook,size: 25,),
                                       SizedBox(width: 5,),
                                       TextButton(child: Text("Login with Facebook",style: TextStyle(fontSize: 16,),),
                                         onPressed:() {
                                         Link("www.facebook.com");
                                         },),
                                     ],
                                   )),
                                     defaultFormField(
                                         controller:email_controller,
                                         type:TextInputType.emailAddress,
                                         hint: "Email",
                                         lable: 'Email',
                                         prefx: Icons.email,
                                         validate:(value){ if (value!.isEmpty) {
                        return "Please enter email";
                      }},
                                         onSubmite: (val){print(val);}
                          ),
                                  
                                    SizedBox(height: 5,),
                                    defaultFormField(
                                      controller:password,
                                      type:TextInputType.visiblePassword,
                                      hint: "Password",
                                      lable: 'Password',
                                      prefx: Icons.lock,
                                      isPassword: is_pass,
                                      validate:(value){ if (value!.isEmpty) {
                                        return "Please enter your password";
                                      }},
                                      onSubmite: (val){print(val);},
                                      suffix:IconButton(
                                        icon: Icon(is_pass?Icons.visibility_off:Icons.visibility),
                                        onPressed: () {
                                          setState(() {
                                            is_pass=!is_pass;
                                          });
                                        },),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(

                                        width: 100,

                                        child: ElevatedButton(
                                          onPressed: (){

                                            if(Formkey.currentState!.validate()){
                                              print(email_controller.text);
                                              print(password.text);

                                            };



                                        }, child:Text("login"),)),
                                           TextButton(
                                     onPressed: (){
                                     Navigator.push(context,
                                       MaterialPageRoute(
                                           builder: (context)=>Verification_code()),
                                     );
                                   }, child: Text("forget password ?"),
                                     //style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue.withOpacity(0.9))
                                     ),
                                   // SizedBox(height: 12,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Don't have an account ?"),
                                        //style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue.withOpacity(0.9))
                                        TextButton(
                                            onPressed: (){
                                          Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context)=>SignUP()),
                                          );
                                        }, child: Text("Sign up")),
                                      ],
                                    ),

                                    //SizedBox(height: 10,),
                                  ],
                                ),
                              ),
                            ),



                      ],
                    ),
                ),

              ),
            ),
          ),



    );
  }
 /* void _login()async{
    if(Formkey.currentState!.validate()){
      print(email_controller.text);
      print(password.text);
      String email=email_controller.text;
      String Password=password.text;
      http.Response R=await http.post(Uri.parse(login),
          body:json.encode({
            "EMAIL":email,
            "PASSWORD":password
          })
      ) ;
      if(R.statusCode==200){
        var body=json.decode(R.body);
        if(!mounted)return;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(body['message'])));
      }

      Navigator.push(context,
        MaterialPageRoute(
            builder: (context)=>choice()),
      );}

  }*/
}