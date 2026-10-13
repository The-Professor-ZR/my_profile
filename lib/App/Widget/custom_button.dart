



import 'package:flutter/material.dart';
import 'package:my_profile/App/Core/screen_size.dart';

import '../Core/app_colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key,required this.onpressed,required this.text,this.widget
  ,this.widgetTwo});
  final Function() onpressed;
  String text;
  Widget? widget;
  Widget? widgetTwo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(
                ScreenSize(context: context).heightP(2)
            ),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(
            vertical: ScreenSize(context: context).heightP(1),
            horizontal: ScreenSize(context: context).widthP(7)
          ),
          child: Row(
            mainAxisAlignment: .spaceAround,
            crossAxisAlignment: .center,
            children: [
              if(widgetTwo!=null) widgetTwo!,
              Text(text,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: ScreenSize(context: context).widthP(6)
              ),),
             if(widget!=null) widget!
            ],
          ),
        ),
      ),
    );
  }
}
