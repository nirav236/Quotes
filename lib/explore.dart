import 'package:flutter/material.dart';

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
                            "People", "assets/icon/people.png", () => null),
                        imagelogo("Positive\nThinking",
                            "assets/icon/positive.png", () => null),
                        imagelogo("Life", "assets/icon/life.png", () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
                            "Attitude", "assets/icon/attitude.png", () => null),
                        imagelogo("Confidence", "assets/icon/confidence.png",
                            () => null),
                        imagelogo("Notifications",
                            "assets/icon/notification.png", () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Happy", "assets/icon/happy.png", () => null),
                        imagelogo(
                            "Wisdom", "assets/icon/wisdom.png", () => null),
                        imagelogo("Overthinking",
                            "assets/icon/overthinking.jpeg", () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Love", "assets/icon/love.png", () => null),
                        imagelogo("Encouraging", "assets/icon/encourage.png",
                            () => null),
                        imagelogo("Self Love", "assets/icon/selflove.png",
                            () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Gratitide", "assets/icon/gratitude.png",
                            () => null),
                        imagelogo(
                            "Husting", "assets/icon/husting.png", () => null),
                        imagelogo(
                            "Stress", "assets/icon/stress.png", () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Determination",
                            "assets/icon/determination.png", () => null),
                        imagelogo("Depression", "assets/icon/depression.png",
                            () => null),
                        imagelogo("Ambition", "assets/icon/ambitioon.png",
                            () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Women", "assets/icon/wo,en.png", () => null),
                        imagelogo("Compassion", "assets/icon/compassion.png",
                            () => null),
                        imagelogo(
                            "Ability", "assets/icon/ability.png", () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Worry", "assets/icon/worry.png", () => null),
                        imagelogo("prosperity", "assets/icon/prosperity.png",
                            () => null),
                        imagelogo("Affirmation", "assets/icon/affirmation.png",
                            () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Productivity",
                            "assets/icon/productivity.png", () => null),
                        imagelogo("Truth", "assets/icon/truth.png", () => null),
                        imagelogo(
                            "Healing", "assets/icon/healing.png", () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Focus", "assets/icon/focus.png", () => null),
                        imagelogo(
                            "Fitness", "assets/icon/fitness.png", () => null),
                        imagelogo(
                            "Growth", "assets/icon/growth.png", () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Money", "assets/icon/money.png", () => null),
                        imagelogo(
                            "Kindness", "assets/icon/kindness.png", () => null),
                        imagelogo("Law of\n Attraction",
                            "assets/icon/lawof.png", () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
                            "Friend", "assets/icon/friends.png", () => null),
                        imagelogo(
                            "Regret", "assets/icon/regret.png", () => null),
                        imagelogo(
                            "Sadness", "assets/icon/sadness.jpeg", () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Self\nDevelopment",
                            "assets/icon/selfdev.png", () => null),
                        imagelogo("Faith", "assets/icon/faith.png", () => null),
                        imagelogo("Leadership", "assets/icon/leadership.png",
                            () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo("Opportunity", "assets/icon/opportunity.png",
                            () => null),
                        imagelogo(
                            "Parents", "assets/icon/parent.png", () => null),
                        imagelogo("Accomplishment",
                            "assets/icon/acomplishment.png", () => null),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        imagelogo(
                            "Stoicism", "assets/icon/stocism.png", () => null),
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
                                image: AssetImage("assets/images/7.jpeg"),
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
                                image: AssetImage("assets/images/8.jpeg"),
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
                                image: AssetImage("assets/images/9.jpg"),
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
                                image: AssetImage("assets/images/10.png"),
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
                                image: AssetImage("assets/images/11.jpeg"),
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
                                image: AssetImage("assets/images/12.jpeg"),
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
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "life",
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
                                image: AssetImage("assets/images/13.jpeg"),
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
                                image: AssetImage("assets/images/14.jpeg"),
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
                                image: AssetImage("assets/images/15.jpeg"),
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
                                image: AssetImage("assets/images/16.png"),
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
                                image: AssetImage("assets/images/17.jpeg"),
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
                                image: AssetImage("assets/images/18.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
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
                                image: AssetImage("assets/images/19.png"),
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
                                image: AssetImage("assets/images/20.png"),
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
                                image: AssetImage("assets/images/21.jpeg"),
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
                                image: AssetImage("assets/images/22.jpeg"),
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
                                image: AssetImage("assets/images/23.jpeg"),
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
                                image: AssetImage("assets/images/24.jpeg"),
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
                                image: AssetImage("assets/images/27.png"),
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
                                image: AssetImage("assets/images/28.png"),
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
                                image: AssetImage("assets/images/29.png"),
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
                                image: AssetImage("assets/images/30.jpeg"),
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
                                image: AssetImage("assets/images/31.png"),
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
                                image: AssetImage("assets/images/32.jpeg"),
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
                                image: AssetImage("assets/images/7.jpeg"),
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
                                image: AssetImage("assets/images/8.jpeg"),
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
                                image: AssetImage("assets/images/9.jpg"),
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
                                image: AssetImage("assets/images/10.png"),
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
                                image: AssetImage("assets/images/11.jpeg"),
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
                                image: AssetImage("assets/images/12.jpeg"),
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
                                image: AssetImage("assets/images/13.jpeg"),
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
                                image: AssetImage("assets/images/14.jpeg"),
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
                                image: AssetImage("assets/images/15.jpeg"),
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
                                image: AssetImage("assets/images/16.png"),
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
                                image: AssetImage("assets/images/17.jpeg"),
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
                                image: AssetImage("assets/images/18.jpeg"),
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
                                image: AssetImage("assets/images/19.png"),
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
                                image: AssetImage("assets/images/20.png"),
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
                                image: AssetImage("assets/images/21.jpeg"),
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
                                image: AssetImage("assets/images/22.jpeg"),
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
                                image: AssetImage("assets/images/23.jpeg"),
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
                                image: AssetImage("assets/images/24.jpeg"),
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
                                image: AssetImage("assets/images/27.png"),
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
                                image: AssetImage("assets/images/28.png"),
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
                                image: AssetImage("assets/images/29.png"),
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
                                image: AssetImage("assets/images/30.jpeg"),
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
                                image: AssetImage("assets/images/31.png"),
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
                                image: AssetImage("assets/images/32.jpeg"),
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
                                image: AssetImage("assets/images/7.jpeg"),
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
                                image: AssetImage("assets/images/8.jpeg"),
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
                                image: AssetImage("assets/images/9.jpg"),
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
                                image: AssetImage("assets/images/10.png"),
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
                                image: AssetImage("assets/images/11.jpeg"),
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
                                image: AssetImage("assets/images/12.jpeg"),
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
                                image: AssetImage("assets/images/13.jpeg"),
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
                                image: AssetImage("assets/images/14.jpeg"),
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
                                image: AssetImage("assets/images/15.jpeg"),
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
                                image: AssetImage("assets/images/16.png"),
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
                                image: AssetImage("assets/images/17.jpeg"),
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
                                image: AssetImage("assets/images/18.jpeg"),
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
                                image: AssetImage("assets/images/19.png"),
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
                                image: AssetImage("assets/images/20.png"),
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
                                image: AssetImage("assets/images/21.jpeg"),
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
                                image: AssetImage("assets/images/22.jpeg"),
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
                                image: AssetImage("assets/images/23.jpeg"),
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
                                image: AssetImage("assets/images/24.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
