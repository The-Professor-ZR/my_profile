import 'package:flutter/material.dart';
import 'package:my_profile/App/Core/navigation_controller.dart';
import 'package:my_profile/App/Core/screen_size.dart';
import 'package:my_profile/App/Widget/imageAvatar.dart';

import '../Core/app_colors.dart';
import '../Screens/cotact_screen.dart';
import '../Screens/education_screen.dart';
import '../Screens/home_screen.dart' show HomeScreen;
import '../Screens/profile_screen.dart';
import '../Screens/project_screen.dart';
import '../Screens/skill_screen.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  List<Widget> pages = [HomeScreen(),ProfileScreen(),
    SkillScreen(),EducationScreen(),ProjectScreen(),ContactScreen()];
  int selectedIndex = 0;
  List<String> listTitles = ['Home','Profile','Skills','Education','Projects'
  ,'Contact'
  ];
  List<IconData> iconList = [Icons.home,Icons.person_2_outlined,
  Icons.code,Icons.school_outlined,Icons.build_circle_outlined,Icons.email_outlined
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.surfaceColor,
      width: ScreenSize(context: context).widthP(80),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Container(
            width: ScreenSize(context: context).screenWidth(),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
                  ScreenSize(context: context).sSizePntg(5),
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenSize(context: context).widthP(5),
                vertical: ScreenSize(context: context).heightP(2),
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  SizedBox(height: ScreenSize(context: context).heightP(7)),
                  ListTile(
                    title: Text(
                      'MyProfile',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: ScreenSize(context: context).fontSize(2),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Scaffold.of(context).closeDrawer();
                      },
                      icon: Icon(
                        Icons.cancel_outlined,
                        color: AppColors.surfaceColor,
                        size: ScreenSize(context: context).sSizePntg(8),
                      ),
                    ),
                    leading: Container(
                      width: ScreenSize(context: context).widthP(13),
                      height: ScreenSize(context: context).heightP(5.3),
                      decoration: BoxDecoration(
                        color: AppColors.surfaceColor,
                        borderRadius: BorderRadius.circular(
                          ScreenSize(context: context).heightP(1.4),
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.school_outlined,
                          color: AppColors.primaryColor,
                          size: ScreenSize(context: context).sSizePntg(8),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: ScreenSize(context: context).widthP(3),
                      top: ScreenSize(context: context).heightP(3),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(
                            ScreenSize(context: context).widthP(20),
                          ),
                        ),
                        border: Border.all(
                          color: Colors.lightBlueAccent,
                          width: 3,
                        ),
                      ),
                      height: ScreenSize(context: context).heightP(10),
                      width: ScreenSize(context: context).widthP(22),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: CircleAvatar(
                          child: Image.asset('assets/images/myPic.png'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: ScreenSize(context: context).widthP(2),
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      mainAxisAlignment: .start,
                      children: [
                        SizedBox(
                          height: ScreenSize(context: context).heightP(2),
                        ),
                        Text(
                          'Zakir Ullah',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: ScreenSize(context: context).fontSize(2),
                            color: AppColors.surfaceColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: ScreenSize(context: context).heightP(1),
                        ),
                        Text(
                          '''zakirafridikhan9@gmail.com''',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: ScreenSize(
                              context: context,
                            ).fontSize(1.4),
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: ScreenSize(context: context).heightP(1),
                        ),
                        Container(
                          width: ScreenSize(context: context).widthP(48),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              ScreenSize(context: context).sSizePntg(4),
                            ),
                            color: Colors.white.withAlpha(60),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: ScreenSize(
                                context: context,
                              ).heightP(0.5),
                              horizontal: ScreenSize(
                                context: context,
                              ).widthP(5),
                            ),
                            child: Row(
                              mainAxisAlignment: .start,
                              crossAxisAlignment: .center,
                              children: [
                                Container(
                                  height: ScreenSize(
                                    context: context,
                                  ).heightP(1.5),
                                  width: ScreenSize(context: context).widthP(3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      ScreenSize(context: context).sSizePntg(4),
                                    ),
                                    color: Colors.greenAccent.shade400,
                                  ),
                                ),
                                SizedBox(
                                  width: ScreenSize(context: context).widthP(3),
                                ),
                                Text(
                                  'Available for work',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: ScreenSize(
                                      context: context,
                                    ).fontSize(1.5),
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(
                vertical: ScreenSize(context: context).heightP(1),
                horizontal:ScreenSize(context: context).widthP(18)),
            child: Text(
              'NAVIGATION',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: ScreenSize(context: context).fontSize(1.3),
                  color: AppColors.inkColor.withAlpha(100),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(
                vertical: ScreenSize(context: context).heightP(2),
                horizontal : ScreenSize(context: context).widthP(8),),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .start,
              children: [
                Container(
                  width: ScreenSize(context: context).widthP(80),
                  height: ScreenSize(context: context).heightP(40),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: listTitles.length,
                      itemBuilder: (context,index){
                        return ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(selectedIndex==index ? 16.0 : 0.0),
                          ),
                          onTap: (){
                            setState(() {
                             selectedIndex = index;
                            });
                            if(selectedIndex==index){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>pages[NavigationController.drawerindex.value]));
                            }
                          },
                          selected: selectedIndex==index,
                          selectedColor: AppColors.inkColor,
                          selectedTileColor: AppColors.primaryColor.withAlpha(20),
                          title: Text(listTitles[index],
                          style: TextStyle(
                            color: selectedIndex==index ? AppColors.primaryColor : AppColors.inkColor,
                          ),),
                          leading: Icon(iconList[index],
                            color: selectedIndex==index ? AppColors.primaryColor : AppColors.inkColor,
                          ),
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
