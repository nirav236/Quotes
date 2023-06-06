import 'package:flutter/cupertino.dart';
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
          backgroundColor: Colors.purpleAccent.shade200),
      body: Column(
        children: [
          Row(
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
          SizedBox(
            height: 10,
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                ), //BoxShadow
                //BoxShadow
              ],
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        imagelogo(
                            "People", "assets/icon/people.png", () => null),
                        imagelogo("Positive\nThinking",
                            "assets/icon/positive.png", () => null),
                        imagelogo("Life", "assets/icon/life.png", () => null),
                        SizedBox(
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
                              SizedBox(
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
                              SizedBox(
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
                              SizedBox(
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
                       SizedBox(
                          height: 50,
                        ) ],
                    ),
                    Column(
                      children: [
                        imagelogo("Determination",
                            "assets/icon/determination.png", () => null),
                        imagelogo("Depression", "assets/icon/depression.png",
                            () => null),
                        imagelogo("Ambition", "assets/icon/ambitioon.png",
                            () => null),
                              SizedBox(
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
                              SizedBox(
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
                              SizedBox(
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
                              SizedBox(
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
                              SizedBox(
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
                              SizedBox(
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
                      
                        SizedBox(
                          height: 50,
                        )],
                    ),
                    Column(
                      children: [
                        imagelogo("Self\nDevelopment",
                            "assets/icon/selfdev.png", () => null),
                        imagelogo("Faith", "assets/icon/faith.png", () => null),
                        imagelogo("Leadership", "assets/icon/leadership.png",
                            () => null),
                        SizedBox(
                          height: 50,
                        )],
                    ),
                    Column(
                      children: [
                        imagelogo("Opportunity", "assets/icon/opportunity.png",
                            () => null),
                        imagelogo(
                            "Parents", "assets/icon/parent.png", () => null),
                        imagelogo("Accomplishment",
                            "assets/icon/acomplishment.png", () => null),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
