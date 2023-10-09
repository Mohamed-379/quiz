import 'package:flutter/material.dart';
import 'package:quiz/screens/screen_3/tabs/home_screen.dart';

import '../screens/screen_1/taps/home_screen.dart';
import '../screens/screen_2/tabs/home_screen.dart';


class ScreensProvider extends ChangeNotifier
{
  List<Widget> taps = [
    HomeScreen(),
    Container(color: Colors.red,),
    Container(color: Colors.blue,),
    Container(color: Colors.brown,)
  ];

  int currentIndex = 0;

  changeCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  List<Widget> tapsS2 = [
    HomeScreenTwo(),
    Container(color: Colors.blue,),
    Container(color: Colors.brown,),
    Container(color: Colors.black,),
  ];

  int currentIndexS2 = 0;

  changeCurrentIndexS2(int index) {
    currentIndexS2 = index;
    notifyListeners();
  }

  List<Widget> tapsS3 = [
    Container(color: Colors.red,),
    HomeSceenThree(),
    Container(color: Colors.blue,),
  ];

  int currentIndexS3 = 0;

  changeCurrentIndexS3(int index)
  {
    currentIndexS3 = index;
    notifyListeners();
  }

  bool isSelected0 = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;

  changeIsSelected(bool newValue, int id)
  {
    if(id == 0) {isSelected0 = newValue;}
    else if(id == 1) {isSelected1 = newValue;}
    else if(id == 2) {isSelected2 = newValue;}
    else if(id == 3) {isSelected3 = newValue;}
    else if(id == 4) {isSelected4 = newValue;}
    else if(id == 5) {isSelected5 = newValue;}
    notifyListeners();
  }
}