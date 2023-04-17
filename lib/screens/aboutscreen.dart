import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AboutScreen extends StatelessWidget {
  static const String id = 'AboutScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.blueAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'About Me',
          ),
          elevation: 0.0,
        ),
        body: ListTileTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: Colors.black),
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
            child: ListTile(
              title: Text(
                '𝗛𝗶, 𝗜 𝗮𝗺 Nikhil Raj👋\n\n👨‍🎓 I am currently in my Pre-Final Year pursuing my B.Tech degree in Computer Science and Engineering(AI&ML) from the Malla Reddy Engineering College, Hyderabad.\n\n👨‍💻 I am a Software Developer with experience in App Development (Flutter/Dart).\n\n🛠️ I worked with Flutter for App Development ,and Firebase for Database.\n\n✨ Currently, I am working on my Data Structures and Algorithms and other Core CS fundamental knowledge.',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
