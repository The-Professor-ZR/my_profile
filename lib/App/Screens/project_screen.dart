










import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/App/Core/app_colors.dart';
import 'package:my_profile/App/Widget/custom_button.dart';
import 'package:my_profile/App/Widget/education_card.dart';
import 'package:my_profile/App/Widget/imageAvatar.dart';
import 'package:my_profile/App/Widget/profile_card.dart';
import 'package:my_profile/App/Widget/project_card.dart';
import 'package:my_profile/App/Widget/white_card.dart';

import '../Core/navigation_controller.dart';
import '../Core/screen_size.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({super.key});
  // the data and detail for white card show on home page
  List<String> projectTitle = ['Portfolio Website','Messaging app','Student Profile'];
  List<IconData> iconList = [Icons.card_giftcard,Icons.message, Icons.school_outlined];
  List<String> projDesc =
  ['Professional Portfolio Website for flutter dev.',
    'Real-time messaging app with firebase', 'Student profile app for student detail',];
  List<Color> iconBackColorArray = [
    Colors.orangeAccent,
    Colors.greenAccent,
    Colors.teal,
  ];
  List<List<String>> skills = [['flutter','dart'],
    ['firebase','flutter'],['flutter','dart']];
  //end of white card data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Featured Projects',style: TextStyle(
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
        body:  SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(
              vertical: ScreenSize(context: context).heightP(2),
              horizontal: ScreenSize(context: context).widthP(4),
            ),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .start,
              children: [
                Text('Made with purpose',style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: ScreenSize(context: context).fontSize(3),
                    color: AppColors.inkColor,
                    fontWeight: FontWeight.bold
                ),),
                Text('''Selected work, from idea to launch.''',style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: ScreenSize(
                        context: context).fontSize(1.5),
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: ScreenSize(context: context).
                  heightP(1),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(
                    vertical: ScreenSize(context: context).heightP(1),
                  ),
                  child: SizedBox(
                    height: ScreenSize(context: context).heightP(50),
                    width: ScreenSize(context: context).widthP(100),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 2.6,
                      ), itemBuilder: (context,index){
                      return ProjectCard(iconData: iconList[index],
                          iconColor: Colors.white,
                          desc: projDesc[index],
                          title: projectTitle[index],
                          iconBackColors: iconBackColorArray[index],
                          skills: skills[index]);
                    },itemCount: projectTitle.length,),
                  ),
                ),
                CustomButton(
                    onpressed: (){},
                    text: 'View all on Github',
                 widgetTwo: FaIcon(
                   FontAwesomeIcons.github,
                   color: Colors.white,
                 ),
                  widget: FaIcon(
                    FontAwesomeIcons.share,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        )
    );
  }
}
