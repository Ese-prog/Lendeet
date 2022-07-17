

import 'package:flutter/material.dart';

import '../../Utils/app_colors.dart';
import 'onboarding.dart';




class SplashScreen extends StatefulWidget {
   static const String route = '/';
  
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _splash();
  }

  _splash() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
   Navigator.pushReplacementNamed(context, OnboardingScreen.route);
   //Navigator.pushReplacementNamed(context, '/catalog');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        color: AppColor.primaryColor,
        duration: const Duration(milliseconds: 3000),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Image(
                image: AssetImage("assets/Logo.png"),
              ),
            SizedBox(height: 10,),
            Text(
              "LENDEET",
              style: TextStyle(
                fontSize: 25.0,
                     fontFamily: "Montserrat",
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "...whenever you need it",
              style: TextStyle(
                fontSize: 16.0,
                     fontFamily: "Montserrat",
                color: AppColor.whiteColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
