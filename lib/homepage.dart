import 'package:flutter/material.dart';

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
