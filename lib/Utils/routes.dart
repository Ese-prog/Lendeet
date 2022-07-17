import 'package:animated_buttons/screens/home_screen/home.dart';
import 'package:flutter/material.dart';

import '../screens/Welcome_screen/onboarding.dart';


import '../screens/Welcome_screen/splash.dart';
import '../screens/Welcome_screen/welcome.dart';
import '../screens/auth_screen/sign_in.dart';
import '../screens/auth_screen/sign_up.dart';



var customRoutes = <String, WidgetBuilder>{
  SplashScreen.route: (context) => const SplashScreen(),
  OnboardingScreen.route: (context) => const OnboardingScreen(),
  WelcomeScreen.route: (context) => const WelcomeScreen(),
  SignInScreen.route: (context) => const SignInScreen(),
  SignUpScreen.route: (context) => const SignUpScreen(),
  HomeScreen.route:(context) => const HomeScreen(),
  //OTPScreen.route: (context) => const OTPScreen(),
  //MainDashboard.route: (context) => const MainDashboard(),
};
