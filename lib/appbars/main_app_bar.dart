// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:komik_replikler/main.dart';
import 'package:komik_replikler/pages/ayarlar.dart';
import 'package:komik_replikler/pages/kategoriler.dart';
import 'package:komik_replikler/pages/randomPage.dart';
import '../pages/favorilerPage.dart';

AppBar mainAppBar(BuildContext context) {
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
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AyarlarPage(),
              ));
        },
        child: Icon(
          Icons.tune,
          size: 30,
        ),
      )
    ],
    title: Row(
      children: [
        Expanded(
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
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              color: Colors.black,
              child: Icon(
                Icons.home,
                color: Colors.yellow,
                size: 40,
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
              color: Color.fromRGBO(255, 235, 59, 1),
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
