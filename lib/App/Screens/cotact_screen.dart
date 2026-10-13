





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/App/Core/app_colors.dart';
import 'package:my_profile/App/Widget/imageAvatar.dart';
import 'package:my_profile/App/Widget/profile_card.dart';
import 'package:my_profile/App/Widget/white_card.dart';

import '../Core/navigation_controller.dart';
import '../Core/screen_size.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});
  // the data and detail for white card show on home page
  List<String> connectTilesTitles = ['Email','Phone','Location',
    'GitHub','Portfolio'];
  List<IconData> iconList = [Icons.email_outlined,
    Icons.phone, Icons.location_on_outlined,Icons.code,
    Icons.email_outlined
  ];
  List<String> connectDetails = ['zakirafridikhan9@gmail.com',
    '+923197494019', 'Peshawar, Pakistan','https://github.com/The-Professor-ZR',
    'http://build-with-zakir.web.app/',];
  List<Color> iconBackColorArray = [
    Colors.purpleAccent.withAlpha(50),
    Colors.greenAccent.withAlpha(50),
    Colors.redAccent.withAlpha(50),
    Colors.deepPurpleAccent.withAlpha(50),
    Colors.purpleAccent.withAlpha(50),
  ];
  List<Color> iconColorsArray = [
    Colors.purpleAccent,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.deepPurpleAccent,
    Colors.purpleAccent,
  ];
  //end of white card data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('''Let's Connect''',style: TextStyle(
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
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenSize(context: context).widthP(5),
            vertical: ScreenSize(context: context).heightP(5),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(9),
                        blurRadius: 10,
                        spreadRadius: 10,
                      ),
                      BoxShadow(
                        color: Colors.black.withAlpha(8),
                        blurRadius: 10,
                        spreadRadius: 10,
                      )
                    ],
                    borderRadius: BorderRadius.circular(
                        ScreenSize(context: context).sSizePntg(7)
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.deepPurpleAccent,
                          Colors.teal
                        ]),
                  ),
                  width: ScreenSize(context: context).widthP(24),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenSize(context: context).heightP(2),
                        horizontal: ScreenSize(context: context).widthP(4)
                    ),
                    child: Center(
                      child: Icon(Icons.email_outlined,
                        color: Colors.white,
                      size: ScreenSize(context: context).sSizePntg(13),
                      )
                    ),
                  ),
                ),
                Text('Start Conversation',style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: ScreenSize(context: context).fontSize(3),
                    color: AppColors.inkColor,
                    fontWeight: FontWeight.bold
                ),),
                Text('''
Have an idea, opportunity or just want to say hello?
                      I would love to hear from you.
''',style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: ScreenSize(
                        context: context).fontSize(1.5),
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),),
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
                        childAspectRatio: 5.5,
                      ), itemBuilder: (context,index){
                      return Padding(
                        padding:  EdgeInsets.symmetric(
                          vertical: ScreenSize(context: context).heightP(0.4),
                          horizontal: ScreenSize(context: context).widthP(3)
                        ),
                        child: WhiteCard(title: connectTilesTitles[index],
                          desc: connectDetails[index],
                          iconBackColor: iconBackColorArray[index],
                          iconColor: iconColorsArray[index],
                          icon: iconList[index],
                          isProfile: false,
                        ),
                      );
                    },itemCount: connectTilesTitles.length,),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
