import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


import 'class.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavigationExample(),
    );
  }
}

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int selectedTab = 0;

  List pages = [
    const MyHomePage(),
    const MyHomePage(),
    const Audio(),
    const Articles(),
    const Myliked(),
    const More(),
  ];

  changeTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        onTap: (index) => changeTab(index),
        selectedItemColor: Colors.purpleAccent.shade200,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.quora), label: "Quota"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.music), label: "Audio"),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: "Articles"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart), label: "Liked"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.arrowRight), label: "More"),
        ],
      ),
    );
  }
}
