import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'class.dart';
import 'explore.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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
                Get.to(const Notifications());
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
                Get.to(const Topquotes());
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
                Get.to(const Motivational());
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
                Get.to(const Sleepsound());
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
                Get.to(const Meditations());
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
                Get.to(const Naturesound());
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
                Get.to(const Myliked());
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
                Get.to(const Posts());
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
                Get.to(const Articles());
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
                Get.to(const Setting());
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
                          FontAwesomeIcons.search,
                          () => explorein(context, "Explore"),
                        ),
                        buildButton(
                          "Nature Sounds",
                          FontAwesomeIcons.music,
                          () => explorein(context, "Nature Sounds"),
                        ),
                        buildButton(
                          "Meditations",
                          FontAwesomeIcons.medium,
                          () => explorein(context, "Meditations"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        buildButton(
                          "Sleep Sounds",
                          FontAwesomeIcons.moon,
                          () => explorein(context, "Sleep Sounds"),
                        ),
                        buildButton(
                          "Motivatational",
                          FontAwesomeIcons.microphone,
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
                          FontAwesomeIcons.star,
                          () => explorein(
                            context,
                            "Top Quotes",
                          ),
                        ),
                        buildButton(
                          "Life Quotes",
                          FontAwesomeIcons.quora,
                          () => explorein(context, "Life Quotes"),
                        ),
                        buildButton(
                          "Inspirational ",
                          FontAwesomeIcons.quora,
                          () => explorein(context, "Inspirational "),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        buildButton(
                          "Attitude\nQuotes",
                          FontAwesomeIcons.quora,
                          () => explorein(context, "Attitude Quotes"),
                        ),
                        buildButton(
                          " Exercises",
                          FontAwesomeIcons.ggCircle,
                          () => explorein(context, " Exercises"),
                        ),
                        buildButton(
                          "Posts",
                          FontAwesomeIcons.images,
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
                          FontAwesomeIcons.music,
                          () => explorein(context, "Audios"),
                        ),
                        buildButton(
                          "My Liked",
                          FontAwesomeIcons.heart,
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
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.grey.shade100,
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(),
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
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: const BoxDecoration(),
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
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: const BoxDecoration(),
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
                    const SizedBox(
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
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/2.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/3.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/4.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/5.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
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
                          "Inspire and Motivate",
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
                    const SizedBox(
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
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/2.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/3.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/4.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/5.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
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
              ),
              const SizedBox(
                height: 20,
              ),
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
                            image: AssetImage("assets/images/4.jpg"),
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
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.grey.shade100,
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(),
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
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: const BoxDecoration(),
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
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: const BoxDecoration(),
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
            ],
          ),
        ),
      ),
    );
  }
}
