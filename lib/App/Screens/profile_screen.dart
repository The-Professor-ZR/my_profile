


import 'package:flutter/material.dart';
import 'package:my_profile/App/Core/navigation_controller.dart';

import '../Core/app_colors.dart';
import '../Core/screen_size.dart';
import '../Widget/imageAvatar.dart';
import '../Widget/white_card.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  // the data and detail for white card show on home page
  List<String> whiteCardTitles = ['Full Name','Institute','Degree Program',
    'Semester','Location'];
  List<IconData> iconList = [Icons.person,Icons.school_outlined,
    Icons.all_inbox,Icons.credit_card,Icons.location_on_outlined
  ];
  List<String> whiteCardDescLines = ['Zakirullah','GDC Jamrud District Khyber',
    'BS Computer Science', '5th','''Peshawar,Pakistan'''];
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
        title: Text('Student Profile',style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: ScreenSize(context: context).fontSize(3),
            color: AppColors.inkColor,
            fontWeight: FontWeight.bold
        ),),
        leading:Builder(
          builder: (BuildContext myContext)=>IconButton(onPressed: (){
            print('navigation value'+NavigationController.index.toString());
            if(NavigationController.index.value==0){
                 Navigator.pop(myContext);
            }else{

            }
          },
              icon: Icon(NavigationController.index.value==NavigationController.drawerindex.value ? Icons.arrow_back:
              Icons.home_outlined
              )),
        ),
        actions: [
          MyImageAvatar(
          ),
          SizedBox(
            width: ScreenSize(context: context).widthP(5),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
            padding:  EdgeInsets.symmetric(
              vertical: ScreenSize(context: context).heightP(2),
              horizontal: ScreenSize(context: context).widthP(2),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .center,
                mainAxisAlignment: .start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(
                        bottom: ScreenSize(context: context).heightP(2)),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          ScreenSize(context: context).sSizePntg(50)
                        ),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.green,
                          width: ScreenSize(context: context).sSizePntg(0.5)
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset('assets/images/myPic.png',
                        height: ScreenSize(context: context).heightP(12),
                          width: ScreenSize(context: context).widthP(26.5),
                        ),
                      ),
                    ),
                  ),
                  Text('Zakir Ullah',style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: ScreenSize(context: context).fontSize(3),
                      color: AppColors.inkColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: ScreenSize(context: context).widthP(0.3)
                  ),),
                  Text('Computer Science Student',style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: ScreenSize(context: context).fontSize(1.2),
                      color: Colors.grey,
                  ),),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: ScreenSize(context: context).heightP(1),
                        bottom: ScreenSize(context: context).heightP(2)),
                    child: Container(
                      width: ScreenSize(context: context).widthP(40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          ScreenSize(context: context).widthP(8)
                        ),
                        color: Colors.greenAccent.withAlpha(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: .spaceAround,
                            crossAxisAlignment: .center,
                            children: [
                              Icon(Icons.check,
                                size: ScreenSize(context: context).heightP(2),),
                              Text('Open to Hire',style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: ScreenSize(
                                    context: context).fontSize(1.5),
                                color: Colors.green,
                                fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenSize(context: context).heightP(50),
                    width: ScreenSize(context: context).widthP(100),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 5,
                      ), itemBuilder: (context,index){
                      return Padding(
                        padding:  EdgeInsets.symmetric(
                          vertical: ScreenSize(context: context).heightP(0.5),
                          horizontal: ScreenSize(context: context).widthP(4)
                        ),
                        child: WhiteCard(title: whiteCardTitles[index],
                          desc: whiteCardDescLines[index],
                          isProfile: true,
                          iconBackColor: iconBackColorArray[index],
                          iconColor: iconColorsArray[index],
                          icon: iconList[index],
                        ),
                      );
                    },itemCount: whiteCardDescLines.length,),
                  ),
                ],
              ),
            ),),
      )
    );
  }
}
