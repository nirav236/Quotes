import 'package:flutter/material.dart';
import 'dart:math';

// ignore: use_key_in_widget_constructors
class QuotesScreen extends StatelessWidget {
  final Map<String, List<String>> quotes = {
    "inspiration": [
      "assets/images/4.jpg",
      "assets/images/1.png",
      "assets/images/3.jpeg",
    ],
    "love": [
      "assets/images/2.jpeg",
      "assets/images/5.jpeg",
      "assets/images/6.jpeg",
    ],
    "success": [
      "assets/images/4.jpg",
      "assets/images/1.png",
      "assets/images/3.jpeg",
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                List<String> imageList = quotes["inspiration"] ?? [];
                var random = Random();
                int i = random.nextInt(imageList.length);
                String image = imageList[i];
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Image.asset(
                        image,
                        width: 200,
                        height: 200,
                      ),
                    );
                  },
                );
              },
              child: const Text("Inspiration"),
            ),
            ElevatedButton(
              onPressed: () {
                List<String> imageList = quotes["love"] ?? [];
                var random = Random();
                int i = random.nextInt(imageList.length);
                String image = imageList[i];
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Image.asset(
                        image,
                        width: 200,
                        height: 200,
                      ),
                    );
                  },
                );
              },
              child: const Text("Love"),
            ),
            ElevatedButton(
              onPressed: () {
                List<String> imageList = quotes["success"] ?? [];
                var random = Random();
                int i = random.nextInt(imageList.length);
                String image = imageList[i];
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Image.asset(
                        image,
                        width: 200,
                        height: 200,
                      ),
                    );
                  },
                );
              },
              child: const Text("Success"),
            ),
          ],
        ),
      ),
    );
  }
}
