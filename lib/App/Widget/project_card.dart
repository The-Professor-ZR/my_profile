






import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/App/Core/app_colors.dart';

import '../Core/screen_size.dart';

class ProjectCard extends StatelessWidget {
  ProjectCard({super.key,required this.iconData,required this.iconColor,
    required this.desc,required this.title,required this.iconBackColors,
    required this.skills
  });
  IconData iconData;
  Color iconColor;
  Color iconBackColors;
  String title;
  String desc;
  List<String> skills;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            ScreenSize(context: context).sSizePntg(4)
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(30),
            blurRadius: 2,
            spreadRadius: 0.1,
          ),
          BoxShadow(
            color: Colors.black.withAlpha(30),
            blurRadius: 2,
            spreadRadius: 0.1,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: ScreenSize(context: context).heightP(1),
            horizontal: ScreenSize(context: context).widthP(4)
        ),
        child: Row(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
                Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        ScreenSize(context: context).sSizePntg(4)),
                    color: iconBackColors
                ),
                  height: ScreenSize(context: context).heightP(20),
                  width: ScreenSize(context: context).widthP(30),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenSize(context: context).heightP(2),
                        horizontal: ScreenSize(context: context).widthP(4.5)
                    ),
                    child: Icon(iconData,
                      color: AppColors.surfaceColor,
                      size: ScreenSize(context: context).sSizePntg(11),
                    ),
                  ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                  left: ScreenSize(context: context).widthP(2)),
              child: Column(
                mainAxisAlignment: .start,
               crossAxisAlignment: .start,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        crossAxisAlignment: .start,
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(title,style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: ScreenSize(context: context).fontSize(2),
                              color: AppColors.inkColor,
                              fontWeight: FontWeight.bold
                          ),),
                          Icon(Icons.navigate_next)
                        ],
                      ),
                      Text('$desc',style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(
                              context: context).fontSize(1),
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                    SizedBox(
                      height: ScreenSize(context: context).heightP(2),
                    ),
                  IntrinsicWidth(
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(
                              right: ScreenSize(context: context).widthP(2)),
                          child: Chip(label: Text(skills[0],style: TextStyle(
                            fontSize: ScreenSize(context: context).sSizePntg(2)
                          ),),
                            backgroundColor: AppColors.surfaceColor,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                              right: ScreenSize(context: context).widthP(2)),
                          child: Chip(label: Text(skills[1],style: TextStyle(
                              fontSize: ScreenSize(context: context).sSizePntg(2)
                          ),),
                            backgroundColor: AppColors.surfaceColor,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(ScreenSize(context: context)
                              .sSizePntg(4)), color: AppColors.primaryColor.withAlpha(50)
                          ),
                          child: Center(
                            child: FaIcon(FontAwesomeIcons.github,
                            size: ScreenSize(context: context).sSizePntg(7),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}














