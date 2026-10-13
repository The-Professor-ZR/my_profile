



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/App/Core/app_colors.dart';

import '../Core/screen_size.dart';

class SkillCard extends StatelessWidget {
  bool isFlutter;
  String skillName;
  String skillDesc;
  Color iconBackColor;
  String skillPercentage;
  Color iconColor;
  dynamic icon;
  SkillCard(
      {super.key,required this.skillName,required this.skillDesc,
    required this.iconBackColor,required this.skillPercentage,
        required this.isFlutter,required this.icon,required this.iconColor
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(30),
            blurRadius: 5,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Colors.black.withAlpha(30),
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadiusGeometry.all(
            Radius.circular(ScreenSize(context: context)
                .heightP(1)
            )
        ),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: ScreenSize(context: context).heightP(1),
            horizontal: ScreenSize(context: context).widthP(3),
          ),
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: .spaceAround,
                    crossAxisAlignment: .start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: iconBackColor,
                          borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(ScreenSize(context: context)
                                  .heightP(1)
                              )
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: ScreenSize(
                                context: context).heightP(0.5),
                            horizontal: ScreenSize(context: context).widthP(1.7),
                          ),
                          child: isFlutter == true ? icon : FaIcon(
                              icon,
                          size: ScreenSize(
                              context: context).sSizePntg(6),
                            color: iconColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenSize(
                            context: context).heightP(2),),
                      Text(skillName,style:TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(context: context)
                              .fontSize(1.4),
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                      ),
                      Text(skillDesc,style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: ScreenSize(context: context)
                            .fontSize(0.8),
                        color: AppColors.inkColor.withAlpha(140),
                      ))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    children: [
                      Text(skillPercentage+'%'.toString(),style:TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: ScreenSize(context: context)
                            .fontSize(1.2),
                        color: AppColors.primaryColor,
                      )
                      ),
                      SizedBox(
                        height: ScreenSize(
                            context: context).heightP(5),),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: ScreenSize(context: context).widthP(100),
                child: LinearProgressIndicator(
                  value: double.parse(skillPercentage),
                  stopIndicatorColor: Colors.black,
                  trackGap: double.parse(skillPercentage),

                  backgroundColor: Colors.purpleAccent,
                ),
              )
            ],
          )
          ,
        ),
      ),
    );
  }
}
