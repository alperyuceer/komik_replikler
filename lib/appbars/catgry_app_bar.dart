import 'package:flutter/material.dart';
import 'package:komik_replikler/pages/ayarlar.dart';

import '../pages/MainPage.dart';
import '../pages/favorilerPage.dart';
import '../pages/randomPage.dart';

AppBar categoryAppBar(BuildContext context) {
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
            onTap: () {},
            child: Container(
              height: 60,
              color: Colors.black,
              child: Icon(
                Icons.widgets_sharp,
                size: 40,
                color: Colors.yellow,
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
