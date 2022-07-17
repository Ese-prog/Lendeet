



import 'package:animated_buttons/Utils/app_colors.dart';
import 'package:animated_buttons/Utils/border_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String route = '/homescreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
 
      
 
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Hi, Great',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),
                  ),
                  IconButton(onPressed: (){}, 
                  icon: const Icon(Icons.shopping_cart_outlined))
                ],
              ),
               const SizedBox(height: 10,),
              const Text('Looking for something?',style: TextStyle(
                fontSize: 16,
                color: AppColor.darkblueColor,
                fontWeight: FontWeight.normal
              ),),
              const SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 SizedBox(
                  width: 280,
                   child: TextFormField(
                    
                    cursorColor: AppColor.greyColor,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: AppColor.greyColor),
                      hintText: 'Book',
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(color: AppColor.blackColor)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(color: AppColor.blackColor)
                      ),
                      prefixIcon: const Icon(Icons.search,color: AppColor.greyColor,)
                    )
                   ),
                 ),

                 const BorderBox(color: AppColor.primaryColor,
                 child: Icon(Icons.sort,color: AppColor.whiteColor,),
                 width: 50,
                 height: 50,
                 )
              
               ],
             ),

              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Categories',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),

                  GestureDetector(
                    onTap: (){},
                    child: const Text('See all',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor
                    ),),
                  )
                ],
              )
            ],
          ),
        )
        ),
    
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.blackColor,
        onTap: _onItemTapped,
        showSelectedLabels: false,
showUnselectedLabels: false,
      ),
    );
  }
}
