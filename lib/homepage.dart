import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'class.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent.shade200,
        title: const Center(child: Text("QUOTA")),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/drawer.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            // color: Colors.amber,

            // UserAccountsDrawerHeader(
            //   accountName: Text("Nirav Thummar"),
            //   accountEmail: Text("thummarnirav@gmail.com"),
            // ),
            // ListTile(
            //   leading: Icon(Icons.explore),
            //   title: Text("Explore"),
            //   trailing: Icon(Icons.arrow_right),
            //   onTap: () {
            //     Get.back();
            //     Get.to(Explorein('Explore'));
            //   },
            // ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                "Notifications",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Notifications());
              },
            ),
            ListTile(
              leading: const Icon(Icons.quora_outlined),
              title: const Text(
                "Top Quotes",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Topquotes());
              },
            ),
            ListTile(
              leading: const Icon(Icons.record_voice_over),
              title: const Text(
                "Motivational",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Motivational());
              },
            ),
            ListTile(
              leading: const Icon(Icons.single_bed_sharp),
              title: const Text(
                "Sleep Sounds",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Sleepsound());
              },
            ),
            ListTile(
              leading: const Icon(Icons.mediation),
              title: const Text(
                "Meditation",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Meditations());
              },
            ),
            ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text(
                "Nature Sounds",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Naturesound());
              },
            ),
            ListTile(
              leading: const Icon(Icons.heart_broken),
              title: const Text(
                "My Liked",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Myliked());
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text(
                "Posts",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Posts());
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text(
                "Articles",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Articles());
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Setting());
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                    ), //BoxShadow
                    //BoxShadow
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      children: [
                        buildButton(
                          "Explore",
                          Icons.search_outlined,
                          () => explorein(context, "Explore"),
                        ),
                        buildButton(
                          "Nature Sounds",
                          Icons.library_music,
                          () => explorein(context, "Nature Sounds"),
                        ),
                        buildButton(
                          "Meditations",
                          Icons.mediation,
                          () => explorein(context, "Meditations"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        buildButton(
                          "Sleep Sounds",
                          Icons.single_bed_sharp,
                          () => explorein(context, "Sleep Sounds"),
                        ),
                        buildButton(
                          "Motivatational",
                          Icons.record_voice_over,
                          () => explorein(context, "Motivatational"),
                        ),
                        buildButton(
                          "Notifications",
                          Icons.notifications,
                          () => explorein(context, "Notifications"),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        buildButton(
                          "Top Quotes",
                          Icons.star,
                          () => explorein(
                            context,
                            "Top Quotes",
                          ),
                        ),
                        buildButton(
                          "Life Quotes",
                          Icons.quora,
                          () => explorein(context, "Life Quotes"),
                        ),
                        buildButton(
                          "Inspirational ",
                          Icons.quora,
                          () => explorein(context, "Inspirational "),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        buildButton(
                          "Attitude Quotes",
                          Icons.quora,
                          () => explorein(context, "Atitude Quotes"),
                        ),
                        buildButton(
                          " Exercises",
                          Icons.circle_rounded,
                          () => explorein(context, " Exercises"),
                        ),
                        buildButton(
                          "Posts",
                          Icons.image,
                          () => explorein(context, "Posts"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        buildButton(
                          "Articles",
                          Icons.article,
                          () => explorein(context, "Articles"),
                        ),
                        buildButton(
                          "Audios",
                          Icons.audiotrack,
                          () => explorein(context, "Audios"),
                        ),
                        buildButton(
                          "My Liked",
                          Icons.heart_broken_sharp,
                          () => explorein(context, "My Liked"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ]),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                    ), //BoxShadow
                    //BoxShadow
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/drawer.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            "clicked";
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(6)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "#wisdom",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(6)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "#quota",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.grey.shade100,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.heart,
                                        color: Colors.purple,
                                        size: 25,
                                      ),
                                      Text(
                                        "SAVE",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.purple),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.download,
                                      color: Colors.purple,
                                      size: 25,
                                    ),
                                    Text(
                                      "DOWNLOAD",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.purple),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.share,
                                      color: Colors.purple,
                                      size: 25,
                                    ),
                                    Text(
                                      "SHARE",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.purple),
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                    ), //BoxShadow
                    //BoxShadow
                  ],
                ),
                height: 250,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Empower Your Mind",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
                        const SizedBox(
                          width: 170,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "see all",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.purple,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/1.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/2.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/3.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/4.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/5.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/6.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
