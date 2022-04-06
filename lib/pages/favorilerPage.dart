// ignore_for_file: prefer_const_constructors

import 'package:komik_replikler/main.dart';
import 'package:flutter/material.dart';
import 'package:komik_replikler/appbars/fav_app_bar.dart';

class Favoriler extends StatefulWidget {
  const Favoriler({Key? key}) : super(key: key);

  @override
  State<Favoriler> createState() => _FavorilerState();
}

class _FavorilerState extends State<Favoriler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: favAppBar(context),
      body: FavorilerAnaEkrani(),
    );
  }
}

class FavorilerAnaEkrani extends StatefulWidget {
  const FavorilerAnaEkrani({Key? key}) : super(key: key);

  @override
  State<FavorilerAnaEkrani> createState() => _FavorilerAnaEkraniState();
}

class _FavorilerAnaEkraniState extends State<FavorilerAnaEkrani> {
  List<bool> isPlaying = List.filled(favoriler.length, false);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.shade300,
      child: ListView.builder(
          itemCount: favoriler.length,
          itemBuilder: (context, indexx) {
            return Card(
              color:
                  Color.fromRGBO(123, 175, 207, 1), //cardların arka plan rengi
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color.fromARGB(255, 3, 26,
                      46), //ses cardlarının etrafındaki çizgilerin rengi
                  width: 3, //ses cardlarının etrafındaki çizgilerin kalınlığı
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.all(7), //cardların birbiri arasındaki boşluk
              elevation: 20,
              child: ListTile(
                leading: CircleAvatar(
                  //Play butonu
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isPlaying[indexx] = !isPlaying[indexx];
                        audioPlayer.play(favoriler[indexx].link);
                      });
                    },
                    //play'e basıldığında icon değişimi
                    child: Icon(Icons.music_note_rounded),
                  ),
                ),
                //ses isimleri
                title: Text(
                  favoriler[indexx].isim,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                //Seslerin Kategorileri
                subtitle: Text(favoriler[indexx].kategori,
                    style: TextStyle(color: Colors.black)),

                //Sağ Uçtaki Favori Simgesi
                //Carda basıldığında yapılacaklar
                onTap: () {
                  audioPlayer.play(favoriler[indexx].link);
                },
              ),
            );
          }),
    );
  }
}
