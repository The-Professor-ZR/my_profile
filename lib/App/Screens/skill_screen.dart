




import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/App/Widget/skill_card.dart';

import '../Core/app_colors.dart';
import '../Core/navigation_controller.dart';
import '../Core/screen_size.dart';
import '../Widget/imageAvatar.dart';
import '../Widget/white_card.dart';

class SkillScreen extends StatelessWidget {
  SkillScreen({super.key});
  // the data and detail for white card show on home page
  List<String> whiteCardTitles = ['Flutter','Dart','Firebase',
    'C++','Python','Git/GitHub'];
  List<int> percentageOfLearning = [90,92,34,32,75,85];
  List<dynamic> iconList = [FlutterLogo(),FontAwesomeIcons.dartLang,
    FontAwesomeIcons.fireBurner,
    FontAwesomeIcons.c,FontAwesomeIcons.python,
    FontAwesomeIcons.github
  ];
  List<String> whiteCardDescLines = ['Mobile','Language',
    'Language', 'Language','Language','''tool'''];
  List<Color> iconBackColorArray = [
    Colors.purpleAccent.withAlpha(50),
    Colors.greenAccent.withAlpha(50),
    Colors.redAccent.withAlpha(50),
    Colors.deepPurpleAccent.withAlpha(50),
    Colors.purpleAccent.withAlpha(50),
    Colors.black.withAlpha(50)
  ];
  List<Color> iconColorsArray = [
    Colors.purpleAccent,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.deepPurpleAccent,
    Colors.purpleAccent,
    Colors.black
  ];
  //end of white card data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Skills & Expertise',style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: ScreenSize(context: context).fontSize(3),
              color: AppColors.inkColor,
              fontWeight: FontWeight.bold
          ),),
          leading: IconButton(onPressed: (){
            if(NavigationController.index.value==0){
              Navigator.pop(context);
            }else{

            }
          },
              icon: Icon(Icons.arrow_back)),
          actions: [
            MyImageAvatar(),
            SizedBox(
              width: ScreenSize(context: context).widthP(5),
            ),
          ],
        ),
        body:  Padding(
          padding:  EdgeInsets.symmetric(
            vertical: ScreenSize(context: context).heightP(2),
            horizontal: ScreenSize(context: context).widthP(4),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .center,
              mainAxisAlignment: .start,
              children: [
                   Row(
                     mainAxisAlignment: .spaceBetween,
                     crossAxisAlignment: .start,
                     children: [
                       Column(
                         mainAxisAlignment: .start,
                         crossAxisAlignment: .start,
                         children: [
                           Text('My toolkit',style: TextStyle(
                               fontFamily: 'Poppins',
                               fontSize: ScreenSize(context: context).fontSize(3),
                               color: AppColors.inkColor,
                               fontWeight: FontWeight.bold
                           ),),
                           SizedBox(
                             height: ScreenSize(context: context).heightP(1),
                           ),
                           Text('''
Technologies I used to turn ideas into
products.
''',style: TextStyle(
                               fontFamily: 'Poppins',
                               fontSize: ScreenSize(
                                   context: context).fontSize(1.5),
                               color: Colors.grey,
                               fontWeight: FontWeight.bold
                           ),),
                         ],
                       ),
                       Column(
                         mainAxisAlignment: .center,
                         crossAxisAlignment: .center,
                         children: [
                           Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(
                                 ScreenSize(context: context).sSizePntg(6)
                               ),
                                 gradient: LinearGradient(
                                     begin: Alignment.topLeft,
                                     end: Alignment.bottomRight,
                                     colors: [
                                 Colors.deepPurpleAccent,
                                   Colors.teal
                             ]),
                             ),
                             child: Padding(
                               padding: EdgeInsets.symmetric(
                                 vertical: ScreenSize(context: context).heightP(2),
                                 horizontal: ScreenSize(context: context).widthP(4)
                               ),
                               child: Center(
                                 child: Text('''
   7 
Skills''',style: TextStyle(
                                   color: Colors.white
                                 ),),
                               ),
                             ),
                           )
                         ],
                       )
                     ],
                   ),
                Row(
                  children: [
                    ActionChip(label: Text('All',style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.white,
                      color: WidgetStatePropertyAll(AppColors.primaryColor),
                      labelStyle: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: ActionChip(label: Text('Mobile',style: TextStyle(color: Colors.black),),
                        backgroundColor: Colors.black,
                        color: WidgetStatePropertyAll(AppColors.surfaceColor),
                        labelStyle: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: ActionChip(label: Text('Languages',style: TextStyle(color: Colors.black),),
                        backgroundColor: Colors.black,
                        color: WidgetStatePropertyAll(AppColors.surfaceColor),
                        labelStyle: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: ActionChip(label: Text('tools',style: TextStyle(color: Colors.black),),
                        backgroundColor: Colors.black,
                        color: WidgetStatePropertyAll(AppColors.surfaceColor),
                        labelStyle: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(
                    vertical: ScreenSize(context: context).heightP(2),
                  ),
                  child: SizedBox(
                    height: ScreenSize(context: context).heightP(60),
                    width: ScreenSize(context: context).widthP(100),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 1.2,
                      ), itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SkillCard(
                          skillPercentage: percentageOfLearning[index].toString(),
                          skillName: whiteCardTitles[index],
                          skillDesc: whiteCardDescLines[index],
                          iconBackColor: iconBackColorArray[index],
                          iconColor: iconColorsArray[index],
                          icon: iconList[index],
                          isFlutter: index == 0 ? true:false,
                        ),
                      );
                    },itemCount: whiteCardDescLines.length,),
                  ),
                )
              ],
            ),
          ),)
    );
  }
}











