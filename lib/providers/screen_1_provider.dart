import 'package:flutter/material.dart';

import '../ui/screens/screen_1/taps/home_screen.dart';

class ScreenOneProvider extends ChangeNotifier
{
  List<Widget> taps = [
    HomeScreen(),
    Container(color: Colors.red,),
    Container(color: Colors.blue,),
    Container(color: Colors.brown,)];

  int currentIndex = 0;

  changeCurrentIndex(int index)
  {
    currentIndex = index;
    notifyListeners();
  }
}