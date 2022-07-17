



import 'package:flutter/material.dart';

import '../../Utils/app_colors.dart';
import '../auth_screen/sign_in.dart';
import '../auth_screen/sign_up.dart';



class WelcomeScreen extends StatefulWidget {
  static const String route = '/welcome';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/Welcome_image.png'),
        fit: BoxFit.fill),
        
      ),
      //child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
      child: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            const Text(
                        "LENDEET",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            color: AppColor.primaryColor,
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Welcome!",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 20,
                            color: AppColor.blackColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                      const Spacer(),
              GestureDetector(
                onTap: (() {
                  Navigator.pushNamed(context, SignUpScreen.route);
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
              const SizedBox(height: 20,),
            GestureDetector(
                onTap: (() {
                  Navigator.pushNamed(context, SignInScreen.route);
                }),
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(
                    child: Text('Sign in', style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                     fontWeight: FontWeight.bold,
                     decoration: TextDecoration.none
                    ),),
                  ),
                ),
              ),
               const SizedBox(height: 40,),
          ],
        ),
      )),
      );
    
  }
}