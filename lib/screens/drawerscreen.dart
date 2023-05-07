import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/aboutscreen.dart';
import 'package:my_portfolio/screens/educationscreen.dart';
import 'package:my_portfolio/screens/mainscreen.dart';
import 'package:my_portfolio/screens/medialinks.dart';

class DrawerL extends StatelessWidget {
  static const String id = 'AboutScreen';

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      child: Drawer(
        child: ListView(
          children: [
            const SingleChildScrollView(
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  accountName: Text(
                    "Ganta Nikhil Raj",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("gantanikhilraj@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "GNR",
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
                size: 26,
              ),
              title: const Text('Home', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, MainScreen.id);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.black,
                size: 26,
              ),
              title: const Text('My Profile', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, AboutScreen.id);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.book,
                color: Colors.black,
                size: 26,
              ),
              title: const Text('Education', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, EducationScreen.id);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.black,
                size: 26,
              ),
              title:
                  const Text('Connect with me', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, SocailMediaLinks.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
