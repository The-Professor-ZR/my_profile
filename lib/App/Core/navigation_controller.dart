

import 'package:flutter/cupertino.dart';

class NavigationController extends ChangeNotifier{
  static ValueNotifier<int> index = ValueNotifier(0);
  static ValueNotifier<int> drawerindex = ValueNotifier(0);
  static void onChange(int newIndex){
    index.value = newIndex;
  }
  static void onChangeDrawer(int newIndex){
    drawerindex.value = newIndex;
  }
}