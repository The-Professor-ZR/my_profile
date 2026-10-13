



import 'package:flutter/material.dart';
import 'package:my_profile/App/Core/app_colors.dart';

import '../Core/screen_size.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({super.key});

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
      height: ScreenSize(context: context).heightP(43),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: ScreenSize(context: context).heightP(1),
            horizontal: ScreenSize(context: context).widthP(4)
        ),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: .start,
              children: [
                Column(
                  mainAxisAlignment: .start,
                  children: [
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(
                          ScreenSize(context: context).sSizePntg(4)),
                        color: AppColors.primaryColor
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: ScreenSize(context: context).heightP(2),
                            horizontal: ScreenSize(context: context).widthP(4.5)
                        ),
                        child: Icon(Icons.school_outlined,
                        color: AppColors.surfaceColor,
                          size: ScreenSize(context: context).sSizePntg(8),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      left: ScreenSize(context: context).widthP(2)),
                  child: Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .start,
                    children: [
                      SizedBox(
                        height: ScreenSize(context: context).heightP(2),
                      ),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(ScreenSize(context: context).sSizePntg(4)),
                          color: Colors.greenAccent.withAlpha(80)
                      ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: ScreenSize(context: context).heightP(1),
                              horizontal: ScreenSize(context: context).widthP(4.5)
                          ),
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            crossAxisAlignment: .center,
                            children: [
                              Container(
                                height: ScreenSize(context: context).heightP(1.5),
                                width: ScreenSize(context: context).widthP(3),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(
                                    ScreenSize(context: context).sSizePntg(4)),
                                    color: Colors.greenAccent.shade400
                                ),
                              ),
                              SizedBox(width: ScreenSize(context: context).widthP(5),),
                              Text('currently studying',style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: ScreenSize(context: context).fontSize(1),
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                      ),
                      Text('BS Computer Science',style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(context: context).fontSize(2),
                          color: AppColors.inkColor,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(
                        height: ScreenSize(context: context).heightP(1),
                      ),
                      Text('''GDC Jamrud District Khyber''',style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(
                              context: context).fontSize(1),
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.withAlpha(80),
            ),
            Row(
              children: [
                Icon(Icons.card_travel,
                  color: Colors.grey,
                  size: ScreenSize(context: context).sSizePntg(5),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      left: ScreenSize(context: context).widthP(2)),
                  child: Text('2023-27',style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: ScreenSize(context: context).fontSize(1.3),
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      left: ScreenSize(context: context).widthP(2)),
                  child: Icon(Icons.location_on_outlined,
                    color: Colors.grey,
                    size: ScreenSize(context: context).sSizePntg(5),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      left: ScreenSize(context: context).widthP(2)),
                  child: Text('Peshawar, Pakistan',style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: ScreenSize(context: context).fontSize(1.3),
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.withAlpha(80),
            ),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text('Current Semester',style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: ScreenSize(context: context)
                          .fontSize(1.2),
                      color: AppColors.inkColor.withAlpha(140),
                    )),
                    Text('6th of 8th',style:TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: ScreenSize(context: context)
                            .fontSize(1.4),
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    )
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: .center,
                  children: [
                    Center(
                      child: Text('75%',style:TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: ScreenSize(context: context)
                              .fontSize(1.4),
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                      ),
                    ),
                  ],
                ),
              ],
            ),
            LinearProgressIndicator(
              color: Colors.deepPurpleAccent,
              value: 75,
              backgroundColor: Colors.grey,
            ),
            Text('Core focus'.toUpperCase(),style:TextStyle(
                fontFamily: 'Poppins',
                letterSpacing: 4,
                fontSize: ScreenSize(context: context)
                    .fontSize(1.4),
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold
            )
            ),
            Row(
              mainAxisAlignment: .start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                      right: ScreenSize(context: context).widthP(2)),
                  child: Chip(label: Text('Data Structure'),
                  backgroundColor: AppColors.surfaceColor,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      right: ScreenSize(context: context).widthP(2)),
                  child: Chip(label: Text('Mobile Dev'),
                    backgroundColor: AppColors.surfaceColor,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      right: ScreenSize(context: context).widthP(2)),
                  child: Chip(label: Text('Database'),
                    backgroundColor: AppColors.surfaceColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}














