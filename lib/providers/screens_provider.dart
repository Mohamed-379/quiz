import 'package:flutter/material.dart';

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

  changeCurrentIndex(int index)
  {
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

  changeCurrentIndexS2(int index)
  {
    currentIndexS2 = index;
    notifyListeners();
  }
}