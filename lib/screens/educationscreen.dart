import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class EducationScreen extends StatelessWidget {
  static const String id = 'EducationScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.cyan])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Education Background'),
          elevation: 0.0,
        ),
        body: ListTileTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: Colors.black),
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(10, 100, 10, 10),
            child: ListTile(
              title: Text(
                'Malla Reddy Engineering College\nCourse : CSE(AI&ML)\nCGPA : 7.8\nYear : 2020 - 2024\n\nKallam Anji Reddy Voc Jr College\nCourse : MPC+CS\nPercentage : 90.03\nYear : 2018 - 2020\n\nSri Sainath Grammar High School\nCourse : SSC\nCGPA : 82\nYear : 2018',
                style: TextStyle(
                    fontSize: 22,
                    // fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
