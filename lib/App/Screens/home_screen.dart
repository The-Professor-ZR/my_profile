


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/App/Core/app_colors.dart';
import 'package:my_profile/App/Screens/cotact_screen.dart';
import 'package:my_profile/App/Screens/education_screen.dart';
import 'package:my_profile/App/Screens/profile_screen.dart';
import 'package:my_profile/App/Screens/project_screen.dart';
import 'package:my_profile/App/Screens/skill_screen.dart';
import 'package:my_profile/App/Widget/drawer_widget.dart';
import 'package:my_profile/App/Widget/imageAvatar.dart';
import 'package:my_profile/App/Widget/profile_card.dart';
import 'package:my_profile/App/Widget/white_card.dart';

import '../Core/screen_size.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // the data and detail for white card show on home page
  List<String> whiteCardTitles = ['Profile', 'Skills', 'Education',
    'Projecs', 'Contact'];

  List<IconData> iconList = [Icons.person, Icons.build_circle_outlined,
    Icons.school_outlined, Icons.code, Icons.email_outlined
  ];

  List<String> whiteCardDescLines = ['about me', '7 strengths',
    'BSCS-6th', '3 builds', '''Let's connect'''];

  List<Color> iconBackColorArray = [
    Colors.purpleAccent.withAlpha(50),
    Colors.greenAccent.withAlpha(50),
    Colors.redAccent.withAlpha(50),
    Colors.deepPurpleAccent.withAlpha(50),
    Colors.purpleAccent.withAlpha(50),
  ];

  List<Color> iconColorsArray = [
    Colors.purpleAccent,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.deepPurpleAccent,
    Colors.purpleAccent,
  ];

List<Widget> pagesList = [ProfileScreen(),SkillScreen(),
EducationScreen(),ProjectScreen(),ContactScreen()
];

  //end of white card data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('MyProfile', style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: ScreenSize(context: context).fontSize(3),
              color: AppColors.inkColor,
              fontWeight: FontWeight.bold
          ),),
          leading: Builder(
            builder: (BuildContext context)=> IconButton(
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: Icon(Icons.menu),onPressed: () {
                 Scaffold.of(context).openDrawer();
            },),
          ),
          actions: [
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>ProfileScreen()));
                },
                child: MyImageAvatar()),
            SizedBox(
              width: ScreenSize(context: context).widthP(5),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenSize(context: context).widthP(5),
            vertical: ScreenSize(context: context).heightP(5),
          ),
          child: Column(
            mainAxisAlignment: .start,
            crossAxisAlignment: .start,
            children: [
              Text('WELCOME  BACK', style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: ScreenSize(context: context).fontSize(1),
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
              ),),
              //The full profile container detail widget is called
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: ScreenSize(context: context).heightP(2),
                ),
                child: ProfileCard(),
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text('Explore', style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: ScreenSize(context: context).fontSize(2),
                    color: AppColors.inkColor,
                    fontWeight: FontWeight.bold,

                  ),),
                  Text('Quick access', style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: ScreenSize(context: context).fontSize(1.5),
                    color: Colors.black.withAlpha(100),
                  ),),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: ScreenSize(context: context).heightP(2),
                ),
                child: SizedBox(
                  height: ScreenSize(context: context).heightP(30),
                  width: ScreenSize(context: context).widthP(100),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 2.5,
                    ), itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>pagesList[index]));
                        },
                        child: WhiteCard(title: whiteCardTitles[index],
                          desc: whiteCardDescLines[index],
                          iconBackColor: iconBackColorArray[index],
                          iconColor: iconColorsArray[index],
                          icon: iconList[index],
                          isProfile: false,
                        ),
                      ),
                    );
                  }, itemCount: whiteCardDescLines.length,),
                ),
              )
            ],
          ),
        )
    );
  }
}