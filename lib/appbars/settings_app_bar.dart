// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:komik_replikler/pages/randomPage.dart';

import '../pages/MainPage.dart';
import '../pages/favorilerPage.dart';
import '../pages/kategoriler.dart';

AppBar settingsAppBar(BuildContext context) {
  return AppBar(
    leading: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Favoriler())));
      },
      child: Container(
        color: Colors.yellow,
        child: Icon(
          Icons.favorite,
          size: 30,
        ),
      ),
    ),
    actions: [
      InkWell(
        onTap: () {},
        child: Container(
          color: Colors.black,
          child: Icon(
            Icons.tune,
            size: 30,
            color: Colors.yellow,
          ),
        ),
      )
    ],
    title: Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              color: Colors.yellow,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Kategoriler())));
                },
                child: Icon(
                  Icons.widgets_sharp,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {},
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => MainPage())));
              },
              child: Container(
                height: 60,
                color: Colors.yellow,
                child: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RandomPage(),
                )),
            child: Container(
              height: 60,
              color: Colors.yellow,
              child: Image.asset(
                "assets/dicekategori.jpg",
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
