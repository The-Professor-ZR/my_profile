


import 'package:flutter/material.dart';
import 'package:my_profile/App/Core/app_colors.dart';
import 'package:my_profile/App/Core/screen_size.dart';
import 'package:my_profile/App/Widget/imageAvatar.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(
            ScreenSize(context: context).heightP(2)
          )
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenSize(context: context).widthP(3),
                vertical: ScreenSize(context: context).heightP(2)
            ),
          child: Column(
            mainAxisAlignment: .start,
            crossAxisAlignment: .start,
            children: [
              Row(
                crossAxisAlignment: .start,
                children: [
                  MyImageAvatar(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenSize(context: context).widthP(3),
                    ),
                    child: Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .start,
                      children: [
                        Text('Zakir Ullah',style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: ScreenSize(context: context)
                                .fontSize(1.6),
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        Text('CS Student & Flutter Developer',style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: ScreenSize(context: context)
                                .fontSize(1),
                            color: Colors.white,
                        ),),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenSize(context: context).heightP(1)
                ),
                child: Text(
                  //Pre-formating mean the dart interpreter well drop the text as formated here
'''
I build thoughtful mobile experiences that make 
everyday tasks feel simple.
'''
                  ,style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: ScreenSize(context: context)
                      .fontSize(1),
                  color: Colors.white,
                ),),
              ),
              Divider(
                color: Colors.white.withAlpha(50),
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenSize(context: context).heightP(1)
                ),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .center,
                  children: [
                    Row(
                      mainAxisAlignment: .start,
                      crossAxisAlignment: .center,
                      children: [
                        Icon(Icons.location_on,color: Colors.white,
                        size: ScreenSize(context: context).sSizePntg(6),
                        ),
                        Center(
                          child: Text('Peshawar,Pakistan',style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: ScreenSize(context: context)
                                .fontSize(1.5),
                            color: Colors.white,
                          ),),
                        ),
                      ],
                    ),
                    Container(
                      height: ScreenSize(context: context)
                          .heightP(2),
                      width: ScreenSize(context: context)
                          .widthP(20),
                      decoration: BoxDecoration(
                          color: Colors.white.withAlpha(50),
                          borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(ScreenSize(context: context)
                                  .heightP(2.5)))
                      ),
                      child: Row(
                        mainAxisAlignment: .spaceEvenly,
                        children: [
                          Container(
                            height: ScreenSize(context: context)
                                .heightP(1),
                            width: ScreenSize(context: context)
                                .widthP(2),
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadiusGeometry.all(
                                    Radius.circular(ScreenSize(context: context)
                                        .heightP(2.5)))
                            ),
                          ),
                          Text('Available',style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: ScreenSize(context: context)
                  .fontSize(1),
                            color: Colors.white,
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
