import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/utils/app_assets.dart';

import '../../../providers/screen_1_provider.dart';

class ScreenOne extends StatefulWidget
{
  static const routeName = "screen1";

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  late ScreenOneProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    // TODO: implement build
    return Scaffold(
      body: provider.taps[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.changeCurrentIndex(index);
        },
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedItemColor: const Color.fromARGB(255, 2, 121, 72),
          items: const [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.home)),label: ""),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.sec)),label: ""),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.calendar)),label: ""),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.user)),label: ""),
      ]),
    );
  }
}