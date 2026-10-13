



import 'package:flutter/material.dart';
import 'package:my_profile/App/Core/app_colors.dart';

import '../Core/screen_size.dart';

class WhiteCard extends StatelessWidget {
  //this widget is used on home and profile screen both
  //so i am going to use the isProfile bool type variable to
  //differentiate and make a separate design for each screen
  bool isProfile;
  String title;
  String desc;
  Color iconBackColor;
  Color iconColor;
  IconData icon;
  WhiteCard({super.key,required this.title,required this.desc,
  required this.iconBackColor,required this.isProfile,required this.icon,required this.iconColor
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
          child: Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .center,
            children: [
              Row(
              mainAxisAlignment: .center,
                crossAxisAlignment: .center,
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
                        vertical: ScreenSize(context: context).heightP(0.5),
                        horizontal: ScreenSize(context: context).widthP(1.7),
                      ),
                      child: Icon(icon,
                        color: iconColor,
                      size: ScreenSize(context: context).sSizePntg(4),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenSize(context: context).widthP(3),
                    ),
                    child: Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .start,
                      children: [
                      Text(title,style: isProfile==false ? TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: ScreenSize(context: context)
                                .fontSize(1.2),
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ):TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: ScreenSize(context: context)
                            .fontSize(0.8),
                        color: AppColors.inkColor.withAlpha(140),
                      )
                      ),
                        Text(desc,style: isProfile == false ? TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(context: context)
                              .fontSize(0.8),
                          color: AppColors.inkColor.withAlpha(140),
                        ):TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: ScreenSize(context: context)
                                .fontSize(1.2),
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        )

                        ),
                      ],
                    ),
                  )
                ],
                    ),
             if(isProfile==false) Icon(Icons.navigate_next_outlined)
            ],
          )
          ,
        ),
      ),
    );
  }
}
