import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_assets.dart';


class HomeScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State{
  List<Widget> slide = [
    Container(
      padding: const EdgeInsets.all(12),
      color: const Color.fromARGB(255, 234, 251, 241),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Positive vibes" ,
                style: TextStyle(
                  color: Color.fromARGB(255, 52, 64, 84),
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 12,),
              Text("Boost your mood with positive vibes", style: TextStyle(fontSize: 16),),
              SizedBox(height: 20,),
              Row(
                children: [
                  ImageIcon(AssetImage(AppAssetsS1.start)),
                  SizedBox(width: 6),
                  Text("10 mins")
                ],
              )
            ],
          ),
        ),
        Expanded(flex: 2,child: Image(image: AssetImage(AppAssetsS1.walk),width: 80,height: 80,))
      ],
    ),),Container(color: Colors.red,),Container(color: Colors.black,)];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              children: [
                Image(image: AssetImage(AppAssetsS1.logo)),
                SizedBox(width: 8,),
                Text("Moody", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                Spacer(),
                Badge(child: Image(image: AssetImage(AppAssetsS1.noti)))
              ],
            ),
            const SizedBox(height: 16,),
            const Text("Hello, Sara Rose", style: TextStyle(fontSize: 22),),
            const SizedBox(height: 8,),
            const Text("How are you feeling today ?", style: TextStyle(fontSize: 18),),
            const SizedBox(height: 14,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image(image: AssetImage(AppAssetsS1.love)),
                    Text("Love")
                  ],
                ),
                Column(
                  children: [
                    Image(image: AssetImage(AppAssetsS1.cool)),
                    Text("Cool")
                  ],
                ),
                Column(
                  children: [
                    Image(image: AssetImage(AppAssetsS1.happy)),
                    Text("Happy")
                  ],
                ),
                Column(
                  children: [
                    Image(image: AssetImage(AppAssetsS1.sad)),
                    Text("Sad")
                  ],
                )
              ],
            ),
            const SizedBox(height: 32,),
            const Row(
              children: [
                Text("Feature",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Spacer(),
                Text("See more",
                  style: TextStyle(color: Color.fromARGB(255, 2, 121, 72), fontWeight: FontWeight.bold),),
                Image(image: AssetImage(AppAssetsS1.back)),
              ],
            ),
            const SizedBox(height: 20,),
            CarouselSlider(
                items: slide,
                options: CarouselOptions(
                  height: 168,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  //onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                )
            ),
            const SizedBox(height: 20,),
            const Row(
              children: [
                Text("Exercise",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),),
                Spacer(),
                Text("See more",
                  style: TextStyle(color: Color.fromARGB(255, 2, 121, 72), fontWeight: FontWeight.bold),),
                Image(image: AssetImage(AppAssetsS1.back)),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(14),
                  color: const Color.fromARGB(255, 247, 243, 253),
                  child: const Row(
                    children: [
                      Image(image: AssetImage(AppAssetsS1.relax)),
                      SizedBox(width: 8,),
                      Text("Relaxation",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                 Container(
                   padding: const EdgeInsets.all(14),
                   color: const Color.fromARGB(255, 251, 240, 248),
                   child: const Row(
                    children: [
                      Image(image: AssetImage(AppAssetsS1.m)),
                      SizedBox(width: 8,),
                      Text("Meditation",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                ),
                 ),
              ],
            ),
            const SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(14),
                  color: const Color.fromARGB(255, 253, 248, 243),
                  child: const Row(
                    children: [
                      Image(image: AssetImage(AppAssetsS1.b)),
                      SizedBox(width: 8,),
                      Text("Breathing",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 6,),
                Container(
                  padding: const EdgeInsets.all(14),
                  color: const Color.fromARGB(255, 238, 247, 253),
                  child: const Row(
                    children: [
                      Image(image: AssetImage(AppAssetsS1.yoga)),
                      Text("Yoga           ",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}