// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:komik_replikler/appbars/random_app_bar.dart';
import 'package:komik_replikler/main.dart';

class RandomPage extends StatelessWidget {
  const RandomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random rnd = Random();
    return Scaffold(
      appBar: randomAppBar(context),
      body: Container(
        color: Colors.yellow.shade300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "RASTGELE SES OYNATICI",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              InkWell(
                onTap: () {
                  audioPlayer.play(sesler[rnd.nextInt(sesler.length)].link);
                }, //zara basınca olacaklar
                child: Image.asset(
                  "assets/zar.png",
                  height: 300,
                ),
              ),
              Text(
                "Rastgele bir ses oynatmak için zara tıklayınız.",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                    iconSize: 100,
                    onPressed: () {
                      audioPlayer.stop();
                    },
                    icon: Icon(Icons.stop_circle)),
              ),
              Text(
                "Sesi durdurmak için tıklayınız.",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
