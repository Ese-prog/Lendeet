
import 'package:animated_buttons/screens/auth_screen/sign_in.dart';
import 'package:animated_buttons/screens/home_screen/home.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_colors.dart';



class SignUpScreen extends StatefulWidget {
   static const String route = '/signup';


  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              Image.asset('assets/Logo.png'),
              //const SizedBox(height: 2,),
              const Text('Sign Up',
              style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 25,
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.bold,
                            
                              ),),
              const SizedBox(height: 10,),
              const Text('Full Name',
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
                        const EdgeInsets.symmetric(horizontal: 15, vertical: .9),
                        border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide:
                            const BorderSide(color: AppColor.blackColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide:
                            const BorderSide(color: AppColor.blackColor)),
                    
                    
                    ),
               
              ),
                const SizedBox(height: 15,),
              const Text('Email Address',
              style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 14,
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.normal,
                              //decoration: TextDecoration.none
                              ),),
                              const SizedBox(height: 1,),
                      TextFormField(
                //obscureText: true,
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
              const SizedBox(height: 15,),
               const Text('Password',
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
                      Icons.remove_red_eye_outlined,
                      color: AppColor.blackColor,
                    ),
                    
                    ),
               
              ),
               const SizedBox(height: 15,),
               const Text('Confirm Password',
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
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: AppColor.blackColor,
                    ),
                    
                    ),
               
              ),
              const SizedBox(height: 30,),
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
                      child: Text('Sign up', style: TextStyle(
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
                  const Text("or sign up with", style: TextStyle(fontWeight: FontWeight.bold),),
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
              const SizedBox(height: 15,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? ',style: TextStyle(
                    fontSize: 16
                  ),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, SignInScreen.route);
                    },
                    child: const Text('Sign in',style: TextStyle(fontSize: 16,color: AppColor.primaryColor),),)
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
