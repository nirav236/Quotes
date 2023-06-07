import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

Widget buildButton(String text, IconData iconData, Function() onTap) {
  return Expanded(
    child: SizedBox(
      height: 100,
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
                  Icon(iconData),
                  // SizedBox(height: 10),
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
              color: Colors.grey.shade200,
            ),
          ),
        ),
      ),
    ),
  );
}

class Naturesound extends StatelessWidget {
  const Naturesound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Nature Sounds")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Meditations extends StatelessWidget {
  const Meditations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Meditations")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Sleepsound extends StatelessWidget {
  const Sleepsound({super.key});

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
          title: const Center(child: Text("Setting")),
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
            title: const Text("More"),
            backgroundColor: Colors.purpleAccent.shade200),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(FontAwesomeIcons.image),
              title: const Text(
                "Posts",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: const Text("List of quotes"),
              onTap: () {
                Get.to(Posts());
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: const Text("App settings"),
              onTap: () {
                Get.to(Setting());
              },
            ),
          ],
        ));
  }
}

class Sharedemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String msg1 = 'hello! how are you';
    String msg2 = '50% off https://pub.dev/packages/image_picker';

    shareText() {
      Share.share(msg2);
    }

    shareImage() async {
      XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        Share.shareFiles([image.path], text: msg1);
      }
    }

    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Audio")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: shareText,
              child: Text('Share Text'),
            ),
            ElevatedButton(
              onPressed: shareImage,
              child: Text('Share Image'),
            ),
          ],
        ),
      ),
    );
  }
}
