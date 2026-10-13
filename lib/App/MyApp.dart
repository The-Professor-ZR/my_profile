

import 'package:flutter/material.dart';
import 'package:my_profile/App/Core/app_colors.dart';
import 'package:my_profile/App/Screens/home_screen.dart';
import 'package:my_profile/App/Screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.canvasColor
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen()
    );
  }
}