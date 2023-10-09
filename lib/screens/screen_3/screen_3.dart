import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/utils/app_assets.dart';

import '../../providers/screens_provider.dart';


class ScreenThree extends StatefulWidget
{
  static const routeName = "screen3";

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  late ScreensProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    // TODO: implement build
    return Scaffold(
      body: provider.tapsS3[provider.currentIndexS3],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: provider.currentIndexS3,
          onTap: (index) {
            provider.changeCurrentIndexS3(index);
          },
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedItemColor: const Color.fromARGB(255, 126, 86, 216),
          iconSize: 32,
          items: const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssetsS3.calender)),label: "Today",),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssetsS3.sec)),label: "Insights"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssetsS3.chat)),label: "Chat"),
          ]),
    );
  }
}