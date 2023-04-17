import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: use_key_in_widget_constructors
class SocailMediaLinks extends StatelessWidget {
  static const String id = 'SocialMediaLinks';

  @override
  Widget build(BuildContext context) {
    final Uri linkedin =
        Uri.parse('https://www.linkedin.com/in/nikhil-raj-ganta-5b551724a/');
    final Uri gitHub = Uri.parse('https://github.com/gantanikhilraj');
    final Uri twitter = Uri.parse('https://twitter.com/gantanikhilraj');
    final Uri instagram = Uri.parse('https://www.instagram.com/i__nikkhil__/');
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.greenAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Socail Media Links'),
        ),
        body: ListTileTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: Colors.black),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 200, 20, 0),
            child: Column(
              children: [
                ListTile(
                    title: const Text(
                      'LinkedIn',
                      style: TextStyle(fontSize: 18),
                    ),
                    leading: (Image.asset(
                      "assets/linkedin-removebg-preview.png",
                      height: 40,
                      width: 40,
                    )),
                    onTap: () {
                      launchUrl(linkedin);
                    }),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: const Text(
                      'GitHub',
                      style: TextStyle(fontSize: 18),
                    ),
                    leading: (Image.asset(
                      "assets/github-removebg-preview.png",
                      height: 40,
                      width: 40,
                    )),
                    onTap: () {
                      launchUrl(gitHub);
                    }),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: const Text(
                      'Twitter',
                      style: TextStyle(fontSize: 18),
                    ),
                    leading: (Image.asset(
                      "assets/twitter-removebg-preview.png",
                      height: 40,
                      width: 40,
                    )),
                    onTap: () async {
                      launchUrl(twitter);
                    }),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: const Text(
                      'Instagram',
                      style: TextStyle(fontSize: 18),
                    ),
                    leading: (Image.asset(
                      "assets/insta-removebg-preview.png",
                      height: 40,
                      width: 40,
                    )),
                    onTap: () async {
                      launchUrl(instagram);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
