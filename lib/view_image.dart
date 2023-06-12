import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'array.dart';
import 'class.dart';
import 'explore.dart';

// ignore: must_be_immutable
class ViewImage extends StatelessWidget {
  String? image;
  ViewImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Image.asset(
                      image.toString(),
                      fit: BoxFit.cover,
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
           const SizedBox(height: 10,),
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
