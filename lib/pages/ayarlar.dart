// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:komik_replikler/appbars/settings_app_bar.dart';
import 'package:komik_replikler/pages/exitAppPage.dart';
import 'package:komik_replikler/pages/hakkimda.dart';
import 'package:komik_replikler/pages/iletisimPage.dart';
import 'package:url_launcher/url_launcher.dart';

const String youtubeLink = 'https://www.youtube.com/c/AlperYüceer';
const String privacyPolicyLink =
    'https://docs.google.com/document/d/1_mJSCWvXn0bLEiMzNGgTeuScSObVNxrCElosvfQ3IoM/edit?usp=sharing';

class AyarlarPage extends StatelessWidget {
  const AyarlarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: settingsAppBar(context),
        body: Container(
          color: Colors.yellow.shade300,
          child: Column(
            children: [
              Card(
                color: Colors.black,
                child: ListTile(
                  onTap: () {
                    _launchURL(youtubeLink);
                  },
                  title: Text(
                    "YOUTUBE KANALIMIZ!",
                    style: TextStyle(
                        color: Colors.yellow, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => IletisimPage()));
                  },
                  title: Text(
                    "İletişim",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HakkimdaPage()));
                  },
                  title: Text(
                    "Hakkımda",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  onTap: () {
                    _launchURL(privacyPolicyLink);
                  },
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExitAppPage(),
                        ));
                  },
                  title: Text(
                    "Uygulamadan Çık",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: Image.asset('assets/biglogo.png'),
              ),
            ],
          ),
        ));
  }
}

void _launchURL(String url) async {
  if (!await launch(url)) throw 'URL Açılamadı $url';
}
