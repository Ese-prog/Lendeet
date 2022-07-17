

import 'package:animated_buttons/screens/auth_screen/sign_up.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_colors.dart';
import '../home_screen/home.dart';



class SignInScreen extends StatefulWidget {
  static const String route = '/signin';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {




  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                Image.asset('assets/Logo.png'),
                 const SizedBox(height: 10,),
                const Text('Sign In',
                style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 25,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.bold,
                              
                                ),),
              
                
                  const SizedBox(height: 30,),
                const Text('Email Address',
                style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.normal,
                               
                                ),),
                                const SizedBox(height: 1,),
                        TextFormField(
                  
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(color: AppColor.blackColor),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                              const BorderSide(color: AppColor.blackColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                              const BorderSide(color: AppColor.blackColor)),
                      suffixIcon: const Icon(
                        Icons.mail_outline,
                        color: AppColor.blackColor,
                      ),
                      
                      ),
                 
                ),
                const SizedBox(height: 20,),
                 const Text('Password',
                style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.normal,
                                
                                ),),
                                const SizedBox(height: 1,),
                        TextFormField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(color: AppColor.blackColor),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                              const BorderSide(color: AppColor.blackColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                              const BorderSide(color: AppColor.blackColor)),
                      suffixIcon:   const Icon(
                                                Icons.visibility,
                                                color: Colors.black54,
                                              ),
                                           
                                           
                      ),
                 
                ),
                
                
                const SizedBox(height: 35,),
                 GestureDetector(
                    onTap: (() {
                    Navigator.pushNamed(context, HomeScreen.route);
                    }),
                    child: Container(
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(
                        child: Text('Sign in', style: TextStyle(
                          color: AppColor.whiteColor,
                          fontSize: 15,
                         fontWeight: FontWeight.bold,
                         decoration: TextDecoration.none
                        ),),
                      ),
                    ),
                  ),
                const SizedBox(height: 25,),
                  Row(children: [
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                          child: const Divider(
                            color: AppColor.greyColor,
                            thickness: 2,
                            
                          )),
                    ),
                    const Text("or sign in with", style: TextStyle(fontWeight: FontWeight.bold),),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.only(left: 10.0, right: 30.0),
                          child: const Divider(
                            thickness: 2,
                            color: AppColor.greyColor,
                           
                          )),
                    ),
                  ]),
                  const SizedBox(height: 20,),
                  
                     Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/Google_btn.png'),
                           const SizedBox(width: 12,),
                          Image.asset('assets/apple_btn.png'),
                           const SizedBox(width: 12,),
                          Image.asset('assets/facebook_btn.png')
                        ],
                      ),
                    
                const SizedBox(height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? ",style: TextStyle(
                      fontSize: 16
                    ),),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, SignUpScreen.route);
                      },
                      child: const Text('Sign up',style: TextStyle(fontSize: 16,color: AppColor.primaryColor),),)
                  ],
                 ),
            const SizedBox(height: 20,),
              ],
            ),
          ),
      ),
     
    ); 
  }
}
  