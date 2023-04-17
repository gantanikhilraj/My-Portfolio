import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Experience extends StatelessWidget {
  static const String id = "ExperienceScreen";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.limeAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('My Experience'),
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
                '👨‍💻Software Developer Intern\nNearFi - Internship\nNov 2022 - Present · 4 mos\nHyderabad, Telangana, India On-site\n\n➡Support and implementing new features, enhancements and user interfaces\n➡Writing clean, readable, and testable code\n➡Troubleshoot and debug to optimize performance\n➡Implementing better UI/UX design for smooth transitions\n➡Support and implementing new features, enhancements and user interfaces\n➡Writing clean, readable, and testable code\n➡Troubleshoot and debug to optimize performance\n➡Implementing better UI/UX design for smooth transitions\n\nSkills: Flutter · Dart · Cloud Firestore · Figma (Software)',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
