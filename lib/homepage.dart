import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'array.dart';
import 'class.dart';
import 'explore.dart';
import 'view_image.dart';

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
              leading: const Icon(FontAwesomeIcons.heart),
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
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    imagelogo2("Explore", "assets/icon/explore.jpg",
                        () => explorein(context, "Explore")),
                    imagelogo2("Popular", "assets/icon/popular.jpg",
                        () => explorein(context, "Explore")),
                    imagelogo2("Latest", "assets/icon/latest.jpg",
                        () => explorein(context, "Explore")),
                    imagelogo2(
                      "People",
                      "assets/icon/people.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[1],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Positive Thinking",
                      "assets/icon/positive.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[1],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Life",
                      "assets/icon/life.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[1],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Attitude",
                      "assets/icon/attitude.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[2],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Confidence",
                      "assets/icon/confidence.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[2],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Notifications",
                      "assets/icon/notification.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[2],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Happy",
                      "assets/icon/happy.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[3],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Wisdom",
                      "assets/icon/wisdom.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[3],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Overthinking",
                      "assets/icon/overthinking.jpeg",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[3],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Love",
                      "assets/icon/love.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[4],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Encouraging",
                      "assets/icon/encourage.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[4],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Self Love",
                      "assets/icon/selflove.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[4],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Gratitide",
                      "assets/icon/gratitude.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[5],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Husting",
                      "assets/icon/husting.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[5],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Stress",
                      "assets/icon/stress.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[5],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Determination",
                      "assets/icon/determination.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[6],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Depression",
                      "assets/icon/depression.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[6],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Ambition",
                      "assets/icon/ambitioon.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[6],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Women",
                      "assets/icon/wo,en.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[7],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Compassion",
                      "assets/icon/compassion.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[7],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Ability",
                      "assets/icon/ability.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[7],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Worry",
                      "assets/icon/worry.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[8],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "prosperity",
                      "assets/icon/prosperity.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[8],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Affirmation",
                      "assets/icon/affirmation.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[8],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Productivity",
                      "assets/icon/productivity.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[9],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Truth",
                      "assets/icon/truth.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[9],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Healing",
                      "assets/icon/healing.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[9],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Focus",
                      "assets/icon/focus.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[0],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Fitness",
                      "assets/icon/fitness.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[0],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Growth",
                      "assets/icon/growth.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[0],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Money",
                      "assets/icon/money.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[1],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Kindness",
                      "assets/icon/kindness.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[1],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Law of Attraction",
                      "assets/icon/lawof.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[1],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Friend",
                      "assets/icon/friends.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[2],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Regret",
                      "assets/icon/regret.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[2],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Sadness",
                      "assets/icon/sadness.jpeg",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[2],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Self Development",
                      "assets/icon/selfdev.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[3],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Faith",
                      "assets/icon/faith.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[3],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Leadership",
                      "assets/icon/leadership.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[3],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Opportunity",
                      "assets/icon/opportunity.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: peopleImage[4],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Parents",
                      "assets/icon/parent.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: positivethink[4],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Accomplishment",
                      "assets/icon/acomplishment.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[4],
                            );
                          },
                        ));
                      },
                    ),
                    imagelogo2(
                      "Stoicism",
                      "assets/icon/stocism.png",
                      () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewImage(
                              image: life[5],
                            );
                          },
                        ));
                      },
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 5,
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
                      height: 5,
                    ),
                    SizedBox(
                      height: 215,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: peopleImage.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                          
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                peopleImage[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
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
                      height: 5,
                    ),
                    SizedBox(
                      height: 215,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: positivethink.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                             child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                positivethink[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    )
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
