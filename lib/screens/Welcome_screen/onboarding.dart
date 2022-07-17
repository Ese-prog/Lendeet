
import 'package:animated_buttons/screens/Welcome_screen/welcome.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_colors.dart';
import '../../models/onboarding_info.dart';



class OnboardingScreen extends StatefulWidget {
  static const String route = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
       
          body: PageView.builder(
              controller: _controller,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: 3,
              itemBuilder: ((context, index) {
                return SizedBox(
                  height: size.height,
                  width: size.width,
                  child: Column(
                    children: [
                      
                    
                        
                          Center(
                           child: SizedBox(
                              height: 400,
                              width: size.width -100,
                              child: Image.asset(onboardingPages[index].image)),
                         ),
                     
                     
                       Expanded(
                         child: Container(
                          height: 100,
                          width: size.width,
                            decoration: const BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(100))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: List.generate(
                                          3,
                                          (index) => Container(
                                                height: 9,
                                                width:
                                                    currentIndex == index ? 25 : 9,
                                                margin:
                                                    const EdgeInsets.only(right: 5),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                    color: currentIndex == index
                                                        ? AppColor.whiteColor
                                                        : AppColor.whiteColor
                                                            .withOpacity(.4)),
                                              ))),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    onboardingPages[index].title,
                                    style: const TextStyle(
                                        color: AppColor.whiteColor,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 30),
                                    child: Text(
                                      onboardingPages[index].description,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: AppColor.whiteColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                   index == 2
                                          ?  GestureDetector(
                                         onTap: (() {
                                           Navigator.pushReplacementNamed(context, WelcomeScreen.route);
                                         }),
                                         child: Container(
                                          height: 50,
                                           width: size.width *.7,
                                           decoration: BoxDecoration(
                                             color: AppColor.whiteColor,
                                             borderRadius: BorderRadius.circular(10)
                                           ),
                                           child: const Center(
                                             child: Text('Get started', style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 16,
                         fontWeight: FontWeight.bold,
                         decoration: TextDecoration.none
                                             ),),
                                           ),
                                         ),)
                                          : Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  onTap: (() {
                                                    _controller.nextPage(
                                                        duration: const Duration(
                                                            milliseconds: 500),
                                                        curve: Curves.easeInOut);
                                                  }),
                                                  child: const Text(
                                                    'Skip',
                                                    style: TextStyle(
                                                        color: AppColor.whiteColor,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                ),
                                                FloatingActionButton(
                                                  onPressed: () {
                                                    _controller.nextPage(
                                                        duration: const Duration(
                                                            milliseconds: 500),
                                                        curve: Curves.easeInOut);
                                                  },
                                                  child: const Icon(
                                                    Icons
                                                        .keyboard_arrow_right_sharp,
                                                    color: AppColor.primaryColor,
                                                    size: 30,
                                                  ),
                                                  backgroundColor: Colors.white,
                                                )
                                              ],
                                            )
                                ],
                              ),
                            ),
                          ),
                       ),
              
                    ],
                  ),
                );
              })),
        ),
      
    );
  }
}
