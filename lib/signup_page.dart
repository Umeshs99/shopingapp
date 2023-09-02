import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

import 'ecommerce/profile.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final TextEditingController fullNameText = TextEditingController();
  final TextEditingController phoneNumberText = TextEditingController();
  final TextEditingController emailText = TextEditingController();
  final TextEditingController passwordText = TextEditingController();
  final TextEditingController confirmPasswordText = TextEditingController();

  moveNext(BuildContext context) async {
    if(fullNameText.text.trim().isEmpty){
      MotionToast(
        description: Text('Enter Your Name'),
        primaryColor: Colors.red,
        height: 100,
        width: 500,
      ).show(context);
    }
    else if(phoneNumberText.text.trim().isEmpty){
      MotionToast(
          description: Text('Enter your Phone Number'),
          primaryColor: Colors.red,
          height: 100,
          width: 500,
      ).show(context);
    }
    else if(emailText.text.trim().isEmpty){
      MotionToast(
        description: Text('Enter Your E-mail'),
        primaryColor: Colors.red,
        width: 500,
        height: 100,
      ).show(context);
    }
    else if(passwordText.text.trim().isEmpty){
      MotionToast(
        description: Text('Enter Strong Password'),
        primaryColor: Colors.red,
        height: 100,
        width: 500,
      ).show(context);
    }
    else if(confirmPasswordText.text.trim().isEmpty){
      MotionToast(
        description: Text('Enter Confirm Password'),
        primaryColor: Colors.red,
        height: 100,
        width: 500,
      ).show(context);
    }
    else{
      await Future.delayed(const Duration(seconds: 1));
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
      MotionToast(
          description:  Text('Account Created Successfully'),
          primaryColor: Colors.green,
          width: 500,
          height: 100,
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
              height: 119,
              width: 800,
              // color: Colors.white,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/image/signup.png'),

                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 208.0),
                    child: const Text("Full Name",style: TextStyle(fontSize: 15),),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 280,
                    height: 35,
                    child: TextField(
                      controller: fullNameText,
                      decoration: const InputDecoration(
                          labelText: 'Full Name',labelStyle: TextStyle(fontSize: 14),
                        suffixIcon: Icon(Icons.person,color: Colors.black45),
                        isDense: true,
                        hintText: "Enter your Name",hintStyle: TextStyle(fontSize: 14),
                        contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.25,
                          ),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(6, 6),
                              bottomRight: Radius.elliptical(6, 6),
                              topLeft: Radius.elliptical(6, 6),
                              topRight: Radius.elliptical(6, 6)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black45
                          )
                        )
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 180.0),
                    child: Text('Phone Number',style: TextStyle(fontSize: 15),),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 35,
                    width: 280,
                    child:  TextField(
                      controller: phoneNumberText,
                      decoration: InputDecoration(
                          labelText: 'Phone Number',labelStyle: TextStyle(fontSize: 14),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                        suffixIcon: Icon(Icons.phone_callback_outlined,color: Colors.black45),
                        hintText: "Enter Phone number",hintStyle: TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.elliptical(7, 7),
                            topLeft: Radius.elliptical(7, 7),
                            bottomRight: Radius.elliptical(7, 7),
                             bottomLeft: Radius.elliptical(7, 7)
                          ),
                          borderSide: BorderSide(
                            width: 0.25,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black45
                          )
                        )
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 240.0),
                    child: Text('Email',style: TextStyle(fontSize: 15),),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 35,
                    width: 280,
                    child:  TextField(
                      controller: emailText,
                      decoration: const InputDecoration(
                          labelText: 'E-mail',labelStyle: TextStyle(fontSize: 14),
                        isDense: true,
                        hintText: 'Enter Your Email',hintStyle: TextStyle(fontSize: 14),
                        contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                        suffixIcon: Icon(Icons.email_outlined,color: Colors.black45),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.25,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black45
                          )
                        )
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 213.0),
                    child: Text('Password',style: TextStyle(fontSize: 15),),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 35,
                    width: 280,
                    child:  TextField(
                      controller: passwordText,
                      decoration: const InputDecoration(
                          labelText: 'Password',labelStyle: TextStyle(fontSize: 14),
                          isDense: true,
                          hintText: 'Enter Your Password',hintStyle: TextStyle(fontSize: 14),
                          contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                          suffixIcon: Icon(Icons.password_sharp,color: Colors.black45),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0.25,
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black45
                              )
                          )
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 158.0),
                    child: Text('Confirm Password',style: TextStyle(fontSize: 15),),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 35,
                    width: 280,
                    child:  TextField(
                      controller: confirmPasswordText,
                      decoration: const InputDecoration(
                          labelText: 'Confirm Password',labelStyle: TextStyle(fontSize: 14),
                          isDense: true,
                          hintText: 'Enter Your Password',hintStyle: TextStyle(fontSize: 13),
                          contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                          suffixIcon: Icon(Icons.password_sharp,color: Colors.black45),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0.25,
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black45
                              )
                          )
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: 32,
                    width: 280,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(6, 6),
                        bottomRight:Radius.elliptical(6, 6),
                        topLeft: Radius.elliptical(6, 6),
                        topRight: Radius.elliptical(6, 6),
                      )
                    ),
                    child: ElevatedButton(onPressed: () => moveNext(context),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red), child: const Text("Sign Up",
                      style: TextStyle(color: Colors.white),),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
