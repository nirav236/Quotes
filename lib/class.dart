import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

class LikedImage {
  final String imagePath;

  LikedImage(this.imagePath);
}


Widget imagelogo2(String text, String imagePath, Function() onTap) {
  return SizedBox(
    //  width: 100,
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(5),

          // ignore: sort_child_properties_last
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(imagePath),
                  backgroundColor: Colors.white,
                ),
                Center(
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.shade200,
          ),
        ),
      ),
    ),
  );
}

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
          title: const Center(child: Text("Sleep Sounds")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Motivational extends StatelessWidget {
  const Motivational({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Motivational")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Notifications")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Topquotes extends StatelessWidget {
  const Topquotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Top Quotes")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Lifequotes extends StatelessWidget {
  const Lifequotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Inspirational extends StatelessWidget {
  const Inspirational({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Attitudequotes extends StatelessWidget {
  const Attitudequotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Exercises extends StatelessWidget {
  const Exercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Posts")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Articles")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Audio extends StatelessWidget {
  const Audio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Audio")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Myliked extends StatelessWidget {
  const Myliked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("My Liked")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Setting")),
          backgroundColor: Colors.purpleAccent.shade200),
    );
  }
}

class More extends StatelessWidget {
  const More({super.key});

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
                Get.to(const Posts());
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
                Get.to(const Setting());
              },
            ),
          ],
        ));
  }
}

class Sharedemo extends StatelessWidget {
  const Sharedemo({super.key});

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
        // ignore: deprecated_member_use
        Share.shareFiles([image.path], text: msg1);
      }
    }

    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Audio")),
          backgroundColor: Colors.purpleAccent.shade200),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: shareText,
              child: const Text('Share Text'),
            ),
            ElevatedButton(
              onPressed: shareImage,
              child: const Text('Share Image'),
            ),
          ],
        ),
      ),
    );
  }
}
