import 'package:flutter/material.dart';
import 'screens/aboutscreen.dart';
import 'screens/mainscreen.dart';
import 'screens/educationscreen.dart';
import 'screens/experience.dart';
import 'screens/medialinks.dart';

// import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MainScreen(),
      routes: {
        AboutScreen.id: (context) => AboutScreen(),
        EducationScreen.id: (context) => EducationScreen(),
        Experience.id: (context) => Experience(),
        SocailMediaLinks.id: (context) => SocailMediaLinks(),
      },
    );
  }
}
