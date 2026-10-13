







import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/App/Core/app_colors.dart';
import 'package:my_profile/App/Widget/education_card.dart';
import 'package:my_profile/App/Widget/imageAvatar.dart';
import 'package:my_profile/App/Widget/profile_card.dart';
import 'package:my_profile/App/Widget/white_card.dart';

import '../Core/navigation_controller.dart';
import '../Core/screen_size.dart';

class EducationScreen extends StatelessWidget {
  EducationScreen({super.key});
  // the data and detail for white card show on home page
  List<String> whiteCardTitles = ['Portfolio Website','Messaging app','Student Profile'];
  List<IconData> iconList = [Icons.card_giftcard,Icons.message, Icons.school_outlined];
  List<String> whiteCardDescLines = ['Portfolio website for professional flutter developer.',
    'Real-time messaging app with firebase', 'Student profile app for student detail',];
  List<Color> iconBackColorArray = [
    Colors.orangeAccent.withAlpha(50),
    Colors.greenAccent.withAlpha(50),
    Colors.teal.withAlpha(50),
  ];
  //end of white card data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Education',style: TextStyle(
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
                Text('Academic Journey',style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: ScreenSize(context: context).fontSize(3),
                    color: AppColors.inkColor,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: ScreenSize(context: context).heightP(1),
                ),
                Text('''
Building a strong foundation in software engineering
and computer science.
''',style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: ScreenSize(
                        context: context).fontSize(1.5),
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),),
                EducationCard(),
                Stepper(
                  physics: const NeverScrollableScrollPhysics(),
                  currentStep: 1,
                  controlsBuilder: (_, __) => const SizedBox.shrink(), // Next/Cancel buttons chhupao
                  steps: [
                    Step(
                      title: Text("2024 · Metric",style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize:  ScreenSize(
                              context: context).fontSize(1),
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),),
                      content:  Text('Passed metric with A1 Grad',style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(
                              context: context).fontSize(1),
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),),
                      isActive: true,
                      state: StepState.complete,
                    ),
                     Step(
                      title: Text('2023 · FSC Computer Science',style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(
                              context: context).fontSize(1),
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),),
                      content: Text('Complete FSC with A Grade',style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(
                              context: context).fontSize(1),
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),),
                      isActive: true,
                    ),
                     Step(
                      title: Text('2026 · Start Internship',style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(
                              context: context).fontSize(1),
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),),
                      content: Text('One month internship in devixo',style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(
                              context: context).fontSize(1),
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),),
                      isActive: false,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
