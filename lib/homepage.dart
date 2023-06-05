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
        title: Center(child: Text("QUOTA")),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
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
              leading: Icon(Icons.settings),
              title: Text(
                "Notifications",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Notifications());
              },
            ),
            ListTile(
              leading: Icon(Icons.quora_outlined),
              title: Text(
                "Top Quotes",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Topquotes());
              },
            ),
            ListTile(
              leading: Icon(Icons.record_voice_over),
              title: Text(
                "Motivational",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Motivational());
              },
            ),
            ListTile(
              leading: Icon(Icons.single_bed_sharp),
              title: Text(
                "Sleep Sounds",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Sleepsound());
              },
            ),
            ListTile(
              leading: Icon(Icons.mediation),
              title: Text(
                "Meditation",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Meditations());
              },
            ),
            ListTile(
              leading: Icon(Icons.music_note_outlined),
              title: Text(
                "Nature Sounds",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Naturesound());
              },
            ),
            ListTile(
              leading: Icon(Icons.heart_broken),
              title: Text(
                "My Liked",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Myliked());
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text(
                "Posts",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Posts());
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text(
                "Articles",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Articles());
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Get.back();
                Get.to(Setting());
              },
            ),
          ],
        ),
      ),
      body: Container(
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
          new Row(
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
                "Atitude Quotes",
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
          new Row(
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
        ]),
      ),
    );
  }
}
