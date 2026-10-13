


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_profile/App/Core/app_colors.dart';
import 'package:my_profile/App/Core/screen_size.dart';
import 'package:my_profile/App/Screens/cotact_screen.dart';
import 'package:my_profile/App/Screens/education_screen.dart';
import 'package:my_profile/App/Screens/home_screen.dart';
import 'package:my_profile/App/Screens/navigation_page.dart';
import 'package:my_profile/App/Screens/profile_screen.dart';
import 'package:my_profile/App/Screens/project_screen.dart';
import 'package:my_profile/App/Screens/skill_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {





  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=>NavigationPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,),
      body: Container(
        height: ScreenSize(context: context).screenHeight(),
        width: ScreenSize(context: context).screenWidth(),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.primaryColor,
                  AppColors.accentColor
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Container(
                height: ScreenSize(context: context)
                    .heightP(13),
                width: ScreenSize(context: context)
                    .widthP(30),
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadiusGeometry.all(
                    Radius.circular(ScreenSize(context: context)
                        .heightP(2.5)))
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/icons/graduation.png',
                  ),
                ),
              ),
            ),
            Text('MyProfile',style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: ScreenSize(context: context).fontSize(5),
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
            Text('Zakir Ullah'.toUpperCase(),style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: ScreenSize(context: context).fontSize(1),
                color: Colors.greenAccent.shade100,
                fontWeight: FontWeight.bold,
              letterSpacing: ScreenSize(context: context).widthP(3)
            ),),
          ],
        ),
      ),
    );
  }
}
