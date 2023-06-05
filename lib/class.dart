import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:awesome_icons/awesome_icons.dart';

Widget buildButton(String text, IconData iconData, Function() onTap) {
  return Expanded(
    child: SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(iconData),
                  // SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Center(
                      child: Text(
                        text,
                        style: TextStyle(
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
              color: Colors.grey.shade200,
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
  Explorein(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text(title)),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Naturesound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Nature Sounds")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Meditations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Meditations")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Sleepsound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Sleep Sounds")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Motivational extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Motivational")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Notifications")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Topquotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Top Quotes")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Lifequotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Inspirational extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Attitudequotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Exercises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Posts")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Articles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Articles")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Audio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Audio")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Myliked extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("My Liked")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Setting")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Text(""),
    );
  }
}

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("More"), backgroundColor: Colors.purpleAccent.shade200),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(FontAwesomeIcons.image),
              title: Text(
                "Posts",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("List of quotes"),
              
              onTap: () {
                Get.to(Posts());
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("App settings"),
              
              onTap: () {
                Get.to(Setting());
              },
            ),
          ],
        ));
  }
}
