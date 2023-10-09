import 'package:flutter/material.dart';
import 'package:quiz/utils/app_assets.dart';

class HomeScreenTwo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenTwoState();
  }
}

class HomeScreenTwoState extends State with SingleTickerProviderStateMixin
{
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              children: <Widget>[
                Image(image: AssetImage(AppAssetsS2.profile)),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello, jada",
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 6,),
                    Text("Ready to workout?",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
                Spacer(),
                Badge(child: ImageIcon(AssetImage(AppAssetsS2.noti)))
              ],
            ),
            const SizedBox(height: 22,),
            Container(
              padding: const EdgeInsets.all(18),
              color: const Color.fromARGB(255, 246, 247, 250),
              child: const IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            ImageIcon(AssetImage(AppAssetsS2.heart),
                                color: Color.fromARGB(255, 112, 122, 187)),
                            Text("Heart Rate")
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text("81BPM", style: TextStyle(fontSize: 16
                        ,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    VerticalDivider(thickness: 2.0,color: Color.fromARGB(
                        255, 203, 203, 203)),
                    Column(
                      children: [
                        Row(
                          children: [
                            ImageIcon(AssetImage(AppAssetsS2.todo),
                                color: Color.fromARGB(255, 112, 122, 187)),
                            Text("To-do")
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text("32,5%", style: TextStyle(fontSize: 16
                            ,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    VerticalDivider(thickness: 2.0,color: Color.fromARGB(
                        255, 203, 203, 203),),
                    Column(
                      children: [
                        Row(
                          children: [
                            ImageIcon(AssetImage(AppAssetsS2.calo),
                                color: Color.fromARGB(255, 112, 122, 187)),
                            Text("calo")
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text("1000Cal", style: TextStyle(fontSize: 16
                            ,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18,),
            const Text("Workout Programs",
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
            const SizedBox(height: 18,),
            TabBar(
              controller: controller,
              labelColor: const Color.fromARGB(255, 112, 122, 187),
              unselectedLabelColor: const Color.fromARGB(155, 79, 79, 79),
              indicatorColor: const Color.fromARGB(255, 112, 122, 187),
              tabAlignment: TabAlignment.center,
              tabs: const [
                Tab(text: "All Type"),
                Tab(text: "Full Body"),
                Tab(text: "Upper"),
                Tab(text: "Lower"),
              ],
            ),
            Expanded(child: TabBarView(
              controller: controller,
              children: [
                ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(14),
                    margin: const EdgeInsets.all(14),
                    color: const Color.fromARGB(255, 246, 247, 250),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  border: Border.all(color: const Color.fromARGB(
                                      155, 189, 187, 187))
                                ),
                                child: Text(index % 2 == 0 ? "7 days" : "3 days", textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              ),
                              const SizedBox(height: 12,),
                               Text(index % 2 == 0 ? "Morning Yoga" : "Plank Exercise",
                                style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              const SizedBox(height: 8,),
                              Text(index % 2 == 0 ? "Improve mental focus." : "Improve posture and stability."),
                              const SizedBox(height: 6,),
                              const Row(
                                children: [
                                  ImageIcon(AssetImage(AppAssetsS2.time)),
                                  SizedBox(width: 4,),
                                  Text("30 mins")
                            ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(flex: 3,child: Image(image: AssetImage(index % 2 == 0 ? AppAssetsS2.yoga : AppAssetsS2.plank))),
                      ],
                    ),
                  );
                },),
                Container(color: Colors.blue,),
                Container(color: Colors.black,),
                Container(color: Colors.brown,),
              ],))
          ],
        ),
      ),
    );
  }
}