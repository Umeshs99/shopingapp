
// import 'dart:ffi';

import 'package:first_project/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

import 'ecommerce/profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginText = TextEditingController();
  final TextEditingController posswordText = TextEditingController();


    movetoHome(BuildContext context) async {
     if(loginText.text.trim().isEmpty){
       MotionToast(
         description: Text('Enter Your Id'),
         primaryColor: Colors.red,
         width: 400,
         height: 80,
       ).show(context);
     }
     else if(posswordText.text.trim().isEmpty){
       MotionToast(
         description: Text('Enter Password'),
         primaryColor: Colors.red,
         width: 400,
         height: 80,
       ).show(context);
     }
     else{
       await Future.delayed(Duration(milliseconds: 1000 ));
       Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
       MotionToast(
         description: Text('Login Successfull'),
         primaryColor: Colors.green,
         width: 400,
         height: 80,
       ).show(context);

     }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 800,
                height: 158,
                color: Colors.white,
                child: Image(image: AssetImage('assets/image/undraw_Login_re_4vu2.png'))),
           SizedBox(
             height: 20,
           ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.only(right: 208.0),
                 child: const Text("Email Address",style: TextStyle(fontSize: 15),),
               ),
            SizedBox(
               height: 4,
            ),
            Container(
              height: 35,
              width: 300,
            child:  TextField(
              controller: loginText,
               decoration: const InputDecoration(
                 labelText: 'E-mail',labelStyle: TextStyle(fontSize: 14),
                 isDense: true,
                 contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                 suffixIcon: Icon(Icons.person,color: Colors.black45,),
                 hintText: "Enter your Email or Phone number",hintStyle: TextStyle(fontSize: 14),
                 border: OutlineInputBorder(

                   borderSide: BorderSide(
                     width: 0.25,
                   ),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.black45),
                 )
               ),
            ),

              ),
             SizedBox(
               height: 8,
             ),
                   Padding(
                     padding: const EdgeInsets.only(right: 235.0),
                     child: const Text("Password",style: TextStyle(fontSize: 15),),
                   ),
               SizedBox(
                 height: 4,
               ),
                   Container(
                     width: 300,
                     height: 35,
                     child:  TextField(
                       controller: posswordText,
                       decoration: InputDecoration(
                         labelText: 'Password',labelStyle: TextStyle(fontSize: 14),
                         isDense: true,
                         contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                         hintText: "Enter Password",hintStyle: TextStyle(fontSize: 14),
                         suffixIcon: Icon(Icons.password_sharp,color: Colors.black45,),
                         border: OutlineInputBorder(
                           borderSide: BorderSide(
                             width: 0.25
                           )
                         ),
                           focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.black45
                             )
                           ),

                       ),
                     ),
                   ),
               SizedBox(
                 height: 16,
               ),
            Container(
              width: 300,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.elliptical(6, 6),
                    topLeft: Radius.elliptical(6,6),
                  bottomRight: Radius.elliptical(6, 6),
                  bottomLeft: Radius.elliptical(6, 6)
                )
              ),
              child: ElevatedButton(onPressed: () => movetoHome(context), child: Text("Login",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onFocusChange: (value) {

              },),
            ),
           SizedBox(
             height: 22,
           ),
               GestureDetector(
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
                 },
                 child: Container(

                   child: Padding(
                     padding: const EdgeInsets.only(left: 1.0),
                     child: Text(
                       "Create Account?",style: TextStyle(color: Colors.grey.shade400),),
                   ),
                 ),
               )
             ],
           ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 800,
                height: 106,
                color: Colors.white,
                child: Image(image: AssetImage('assets/image/99.png')))
          ],
        )
      ),
    );
  }
}
