import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/providers/screens_provider.dart';
import 'package:quiz/screens/screen_1/screen_1.dart';
import 'package:quiz/screens/screen_2/screen_2.dart';
import 'package:quiz/screens/screen_3/screen_3.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ScreensProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        ScreenOne.routeName: (_) => ScreenOne(),
        ScreenTwo.routeName: (_) => ScreenTwo(),
        ScreenThree.routeName: (_) => ScreenThree(),
      },
      initialRoute: ScreenOne.routeName,
    );
  }
}