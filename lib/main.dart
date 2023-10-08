import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/providers/screen_1_provider.dart';
import 'package:quiz/ui/screens/screen_1/screen_1.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ScreenOneProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        ScreenOne.routeName: (_) => ScreenOne(),
      },
      initialRoute: ScreenOne.routeName,
    );
  }
}