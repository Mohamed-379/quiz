import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/providers/screens_provider.dart';
import 'package:quiz/utils/app_assets.dart';

class HomeSceenThree extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenThreeState();
  }
}

class HomeScreenThreeState extends State
{
  late ScreensProvider provider;
  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Color.fromARGB(102, 126, 86, 216)),
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ImageIcon(AssetImage(AppAssetsS3.logo)),
          SizedBox(width: 4,),
          Text("AliceCare",
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.black),)
        ],
      ),),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Articles, Videos, Audio and more...",
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0)
                ),
              ),
            ),
            const SizedBox(height: 8,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildChoiceChip(content: "Discover", isSelected: provider.isSelected0, id: 0),
                  const SizedBox(width: 5,),
                  buildChoiceChip(content: "News", isSelected: provider.isSelected1, id: 1),
                  const SizedBox(width: 5,),
                  buildChoiceChip(content: "Most Viewed", isSelected: provider.isSelected2, id: 2),
                  const SizedBox(width: 5,),
                  buildChoiceChip(content: "Saved", isSelected: provider.isSelected3, id: 3),
                  const SizedBox(width: 5,),
                  buildChoiceChip(content: "Videos", isSelected: provider.isSelected4, id: 4),
                  const SizedBox(width: 5,),
                  buildChoiceChip(content: "Articles", isSelected: provider.isSelected5, id: 5),
              ],),
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text("Hot topics",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  Spacer(),
                  Text("See all",
                    style: TextStyle(fontWeight: FontWeight.w500,color: Color.fromARGB(250, 126, 86, 216)),),
                  ImageIcon(AssetImage(AppAssetsS3.back),color: Color.fromARGB(250, 126, 86, 216),)
                ],
              ),
            ),
            const SizedBox(height: 10,),
            CarouselSlider(items:
            [
              Container(
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(image: AssetImage(AppAssetsS3.topic_1),fit: BoxFit.cover)
              ),
                  margin: const EdgeInsets.all(4)),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(image: AssetImage(AppAssetsS3.topic_2),fit: BoxFit.cover)
                ),
                margin: const EdgeInsets.all(4))], options: CarouselOptions(height: 150,autoPlay: true)),
            const SizedBox(height: 8,),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Get Tips", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(60, 115, 113, 113)),
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 240, 242, 245)
              ),
              margin: const EdgeInsets.symmetric(horizontal: 18),
              height: 180,
              child: Row(
                children: [
                  Expanded(flex: 2,child: Container(decoration:
                    const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAssetsS3.doctor),
                        fit: BoxFit.fill,
                      )
                    ),)),
                  Expanded(flex: 4,child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Connect with doctor &\nget suggestions",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        const SizedBox(height: 10,),
                        const Text("Connect now and get\nexpert insights",
                          style: TextStyle(fontSize: 18),),
                        const SizedBox(height: 15,),
                        ElevatedButton(
                          onPressed: (){},
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(
                                255, 126, 86, 216)),
                          ),
                          child: const Text("View detail"),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            const SizedBox(height: 8,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Cycle Phases and Period",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(width: 8,),
                Row(
                  children: [
                    Text("See all",
                      style: TextStyle(fontWeight: FontWeight.w500,color: Color.fromARGB(250, 126, 86, 216)),),
                    ImageIcon(AssetImage(AppAssetsS3.back),color: Color.fromARGB(250, 126, 86, 216),)
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
  buildChoiceChip({required String content, required bool isSelected, required int id}) {
    return ChoiceChip(
      selectedColor: const Color.fromARGB(255, 242, 233, 253),
      backgroundColor: Colors.transparent,
      side: const BorderSide(width: 1,color: Color.fromARGB(255, 226, 229, 234)),
      label: Text(content),
      labelStyle: TextStyle(color: isSelected == false ? const Color.fromARGB(255, 118, 127, 146) : const Color.fromARGB(
          255, 104, 65, 197)),
      selected: isSelected,
      onSelected: (newValue) {
        provider.changeIsSelected(newValue, id);
      },
    );
  }
}