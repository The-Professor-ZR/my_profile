




import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_profile/App/Core/app_colors.dart';
import 'package:my_profile/App/Core/navigation_controller.dart';
import 'package:my_profile/App/Screens/cotact_screen.dart';
import 'package:my_profile/App/Screens/education_screen.dart';
import 'package:my_profile/App/Screens/home_screen.dart';
import 'package:my_profile/App/Screens/profile_screen.dart';
import 'package:my_profile/App/Screens/project_screen.dart';
import 'package:my_profile/App/Screens/skill_screen.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  List<Widget> pages = [HomeScreen(),ProfileScreen(),
    SkillScreen(),EducationScreen(),ProjectScreen(),ContactScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark
        ),
      ),
      body: ValueListenableBuilder(
          valueListenable: NavigationController.index,
          builder: (context,value,child){
            return pages[value];
          }),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: NavigationController.index,
        builder:(context,value,child)=>BottomNavigationBar(
          onTap: (newIndex){
            setState(() {
              NavigationController.onChange(newIndex);
            });
          },
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.inkColor,
          currentIndex: value,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
                label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.code),label: 'Skills'),
            BottomNavigationBarItem(icon: Icon(Icons.school_outlined),
                label: 'Education'),
            BottomNavigationBarItem(icon: Icon(Icons.build_circle_outlined),
                label: 'Projects'),
            BottomNavigationBarItem(icon: Icon(Icons.email_outlined),
                label: 'Contact'),
          ],

        ),
      ),
    );
  }
}
