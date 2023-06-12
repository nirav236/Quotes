import 'package:flutter/material.dart';
import 'package:quota/view_image.dart';

import 'array.dart';

Widget imagelogo(String text, String imagePath, Function() onTap) {
  return Expanded(
    child: SizedBox(
      height: 80,
      width: 130,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            // ignore: sort_child_properties_last
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: 50,
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Center(
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

void explorein(BuildContext context, String title) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Explorein(title)),
  );
}

// ignore: must_be_immutable
class Explorein extends StatelessWidget {
  String title;
  Explorein(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Catogories',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.purple),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 15,
                  ), //BoxShadow
                  //BoxShadow
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
                          "Positive\nThinking",
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
                          "Law of\n Attraction",
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
                          "Self\nDevelopment",
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        imagelogo(
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
                        imagelogo(
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
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
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
                        const SizedBox(
                          height: 285,
                        )
                      ],
                    ),
                  ],
                ),
              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "People",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: peopleImage[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                peopleImage[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Positive thinking",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: positivethink[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                positivethink[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Life",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                      itemCount: life.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: life[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                             child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                life[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Attitude",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: peopleImage[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                peopleImage[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Confidence",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: positivethink[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                positivethink[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Notifications",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                      itemCount: life.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: life[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                life[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Happy",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: peopleImage[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                             child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                peopleImage[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Wisdom",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: positivethink[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                positivethink[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Overthinking",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                      itemCount: life.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: life[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                life[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Love",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: peopleImage[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                peopleImage[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Encouraging",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: positivethink[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                             child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                positivethink[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Self Love",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                      itemCount: life.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: life[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                life[index],
                                fit: BoxFit.cover,
                              ),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Gratitude",
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ViewImage(
                                  image: peopleImage[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 150,
                             child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                peopleImage[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
