import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';
import '../login/start.dart';
class SignUP extends StatefulWidget{
  @override
  State<SignUP> createState() => _SignUPState();
}
class _SignUPState extends State<SignUP> {
  @override
  bool is_pass=true;
  var  Formkey=GlobalKey<FormState>();
  var email_controller=TextEditingController();
  var full_name=TextEditingController();
  var password=TextEditingController();
  var Cpassword=TextEditingController();

  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 25.0,left: 30,right: 30,bottom: 3),
          child: Form(
            key: Formkey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(

                      alignment: Alignment.center,
                      child:
                      Column(
                        children: [
                          small_image("assets/doctor.png"),
                          SizedBox(height: 3,),
                          Text("Parkinson",
                            style: TextStyle(
                                color: Colors.orange[900],
                                fontSize: 30,
                                letterSpacing: 6,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Dancing Script'
                            ),),
                          SizedBox(height: 3,),
                          Text("Your journey starts from here 🧡",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                          SizedBox(height: 5,),
                          ElevatedButton(
                            onPressed: (){

                          },
                            child: Row(
                              children: [
                                Icon(Icons.facebook),
                                SizedBox(width: 5),
                                Text("login with Facebook",style: TextStyle(color: Colors.black),)
                              ],
                            ),),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                divider(),
                                SizedBox(width: 5,),
                                Text("OR"),
                                SizedBox(width: 5,),
                                divider(),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: (){

                            },
                            child: Row(
                              children: [
                               Image(image: AssetImage('assets/google.png'),width: 15,height: 15,),
                                SizedBox(width: 5),
                                Text("login with Goofle",style: TextStyle(color: Colors.black),)
                              ],
                            ),),
                          SizedBox(height: 10,),
                     
                          defaultFormField(
                              controller:email_controller,
                              type:TextInputType.emailAddress,
                              hint: "Email",
                              lable: 'Email',
                              prefx: Icons.email,
                              validate:(value){ if (value!.isEmpty) {
                        return "Please enter email";
                      }},
                              onSubmite: (val){print(val);},
                            w: 15
                          ),
                          SizedBox(height: 10,),
                        
                          defaultFormField(
                              controller: full_name,
                              type: TextInputType.name,
                              validate:(value){ if (value!.isEmpty) {
                        return "Please enter full name";
                      }},
                              onSubmite: (val){print(val);},
                              hint: "Full name",
                              lable: 'Full Name',
                              prefx: Icons.person,
                            w: 15.0
                          ),
                          SizedBox(height: 10,),
                          
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
                                 w: 5,
                                   suffix:IconButton(
                                   icon: Icon(is_pass?Icons.visibility_off:Icons.visibility,),
                                   onPressed: () {
                                     setState(() {
                                       is_pass=!is_pass;
                                     });
                                   },),
                               ),
                          SizedBox(height: 10),
                              defaultFormField(
                               controller:Cpassword,
                               type:TextInputType.visiblePassword,
                               hint: "Confirm Password",
                               lable: 'Confirm Password',
                               prefx: Icons.done,
                               isPassword: is_pass,
                               w: 5,
                               validate:(value){ if (value!.isEmpty) {
                              return "Please enter your conformation password";
                            }},
                               onSubmite: (val){
                                 print(val);
                                 },
                            suffix:IconButton(
                              icon: Icon(is_pass?Icons.visibility_off:Icons.visibility,color: Colors.black,),
                              onPressed: () {
                                setState(() {
                                  is_pass=!is_pass;
                                });
                              },),
                          ),
                           
                          SizedBox(height: 5,),
                          Container(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: (){
                                  if(Formkey.currentState!.validate()){
                                    print(email_controller.text);
                                    print(full_name.text);
                                    print(Cpassword.text);
                                    print(password.text);
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context)=>Main()),
                                    );}



                                }, child:Text("Sign up",style: TextStyle(color: Colors.orange[900]),),)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("have an account ?",style: TextStyle(fontSize: 14,letterSpacing: 1),),
                              TextButton(onPressed: (){

                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context)=>Main()),
                                );
                              }, child: Text("log in",style: TextStyle(fontSize: 15,color: Colors.orange[900]),)),
                            ],
                          ),




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

}