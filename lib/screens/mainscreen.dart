import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/aboutscreen.dart';
import 'package:my_portfolio/screens/drawerscreen.dart';
import 'package:my_portfolio/screens/educationscreen.dart';
import 'package:my_portfolio/screens/experience.dart';
import 'package:my_portfolio/screens/medialinks.dart';

// ignore: use_key_in_widget_constructors
class MainScreen extends StatelessWidget {
  static const String id = 'MainSCreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlue,
              Colors.white,
            ],
          ),
        ),
        child: Scaffold(
          drawer: DrawerL(),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            // elevation: 0.5,
            backgroundColor: Colors.black,
            title: const Text(
              'My Portfolio App',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: ListTileTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: const BorderSide(color: Colors.black),
            ),
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
                  child: Text(
                    'Hello 👋 , I am Ganta Nikhil Raj\nNice to meet you',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Column(
                    children: [
                      ListTile(
                          title: const Text(
                            'About Me',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          leading: const Icon(
                            Icons.person_outline_outlined,
                            color: Colors.black,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, AboutScreen.id);
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                          title: const Text(
                            'My Education',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          leading: const Icon(
                            Icons.book_outlined,
                            color: Colors.black,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, EducationScreen.id);
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                          title: const Text(
                            'My Experience',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          leading: const Icon(
                            Icons.campaign_outlined,
                            color: Colors.black,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, Experience.id);
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                          title: const Text(
                            'Connect With Me',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          leading: const Icon(
                            Icons.link,
                            color: Colors.black,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, SocailMediaLinks.id);
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
