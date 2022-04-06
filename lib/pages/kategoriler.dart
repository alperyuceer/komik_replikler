// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:komik_replikler/kategoridenSes.dart';
import 'package:komik_replikler/appbars/catgry_app_bar.dart';
import 'package:komik_replikler/main.dart';
import 'package:komik_replikler/pages/kategoriliSesler.dart';

class Kategoriler extends StatelessWidget {
  const Kategoriler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: categoryAppBar(context),
      body: Container(
        color: Colors.yellow.shade300,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: kategoriler.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  KategoriIsimGetir.kategoriAdiGetir = kategoriler[index];
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => KategoriliSesPage(),
                      ));
                },
                child: Card(
                  color: Colors.yellow,
                  child: Center(
                      child: Text(
                    kategoriler[index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              );
            }),
      ),
    );
  }
}
