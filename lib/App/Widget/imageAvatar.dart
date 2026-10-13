

import 'package:flutter/material.dart';

import '../Core/screen_size.dart';

class MyImageAvatar extends StatelessWidget {
  const MyImageAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(
            ScreenSize(context: context).widthP(5),
          )),
          border: Border.all(
              color: Colors.blueGrey,
              width: 1
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: CircleAvatar(
          child: Image.asset('assets/images/myPic.png',
          ),
        ),
      ),
    );
  }
}
