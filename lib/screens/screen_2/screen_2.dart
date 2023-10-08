import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/utils/app_assets.dart';

import '../../providers/screens_provider.dart';


class ScreenTwo extends StatefulWidget
{
  static const routeName = "screen2";

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  late ScreensProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    // TODO: implement build
    return Scaffold(
      body: provider.tapsS2[provider.currentIndexS2],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: provider.currentIndexS2,
          onTap: (index) {
            provider.changeCurrentIndexS2(index);
          },
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedItemColor: const Color.fromARGB(255, 2, 121, 72),
          items: const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssetsS2.home)),label: ""),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssetsS2.pointer)),label: ""),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssetsS2.ra)),label: ""),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssetsS2.user)),label: ""),
          ]),
    );
  }
}