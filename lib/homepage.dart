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
  
    List peopleImage = [
    'assets/images/1.png',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpg',
    'assets/images/5.jpeg',
    'assets/images/6.jpeg',
    'assets/images/7.jpeg',
    'assets/images/8.jpeg',
    'assets/images/9.jpg',
    'assets/images/10.png',
  ];

   List positivethink = [
    'assets/images/11.jpeg',
    'assets/images/12.jpeg',
    'assets/images/13.jpeg',
    'assets/images/14.jpeg',
    'assets/images/15.jpeg',
    'assets/images/16.png',
    'assets/images/17.jpeg',
    'assets/images/18.jpeg',
    'assets/images/19.png',
    'assets/images/20.png',
  ];
 

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
                    imagelogo2("People", "assets/icon/people.png", () => null),
                    imagelogo2("Positive Thinking", "assets/icon/positive.png",
                        () => null),
                    imagelogo2("Life", "assets/icon/life.png", () => null),
                    imagelogo2(
                        "Attitude", "assets/icon/attitude.png", () => null),
                    imagelogo2(
                        "Confidence", "assets/icon/confidence.png", () => null),
                    imagelogo2("Notifications", "assets/icon/notification.png",
                        () => null),
                    imagelogo2("Happy", "assets/icon/happy.png", () => null),
                    imagelogo2("Wisdom", "assets/icon/wisdom.png", () => null),
                    imagelogo2("Overthinking", "assets/icon/overthinking.jpeg",
                        () => null),
                    imagelogo2("Love", "assets/icon/love.png", () => null),
                    imagelogo2(
                        "Encouraging", "assets/icon/encourage.png", () => null),
                    imagelogo2(
                        "Self Love", "assets/icon/selflove.png", () => null),
                    imagelogo2(
                        "Gratitide", "assets/icon/gratitude.png", () => null),
                    imagelogo2(
                        "Husting", "assets/icon/husting.png", () => null),
                    imagelogo2("Stress", "assets/icon/stress.png", () => null),
                    imagelogo2("Determination", "assets/icon/determination.png",
                        () => null),
                    imagelogo2(
                        "Depression", "assets/icon/depression.png", () => null),
                    imagelogo2(
                        "Ambition", "assets/icon/ambitioon.png", () => null),
                    imagelogo2("Women", "assets/icon/wo,en.png", () => null),
                    imagelogo2(
                        "Compassion", "assets/icon/compassion.png", () => null),
                    imagelogo2(
                        "Ability", "assets/icon/ability.png", () => null),
                    imagelogo2("Worry", "assets/icon/worry.png", () => null),
                    imagelogo2(
                        "prosperity", "assets/icon/prosperity.png", () => null),
                    imagelogo2("Affirmation", "assets/icon/affirmation.png",
                        () => null),
                    imagelogo2("Productivity", "assets/icon/productivity.png",
                        () => null),
                    imagelogo2("Truth", "assets/icon/truth.png", () => null),
                    imagelogo2(
                        "Healing", "assets/icon/healing.png", () => null),
                    imagelogo2("Focus", "assets/icon/focus.png", () => null),
                    imagelogo2(
                        "Fitness", "assets/icon/fitness.png", () => null),
                    imagelogo2("Growth", "assets/icon/growth.png", () => null),
                    imagelogo2("Money", "assets/icon/money.png", () => null),
                    imagelogo2(
                        "Kindness", "assets/icon/kindness.png", () => null),
                    imagelogo2("Law of Attraction", "assets/icon/lawof.png",
                        () => null),
                    imagelogo2("Friend", "assets/icon/friends.png", () => null),
                    imagelogo2("Regret", "assets/icon/regret.png", () => null),
                    imagelogo2(
                        "Sadness", "assets/icon/sadness.jpeg", () => null),
                    imagelogo2("Self Development", "assets/icon/selfdev.png",
                        () => null),
                    imagelogo2("Faith", "assets/icon/faith.png", () => null),
                    imagelogo2(
                        "Leadership", "assets/icon/leadership.png", () => null),
                    imagelogo2("Opportunity", "assets/icon/opportunity.png",
                        () => null),
                    imagelogo2("Parents", "assets/icon/parent.png", () => null),
                    imagelogo2("Accomplishment",
                        "assets/icon/acomplishment.png", () => null),
                    imagelogo2(
                        "Stoicism", "assets/icon/stocism.png", () => null),
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
                          child: Image.asset(
                            peopleImage[index],
                            fit: BoxFit.cover,
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
                          child: Image.asset(
                            positivethink[index],
                            fit: BoxFit.cover,
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
