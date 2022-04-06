// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:komik_replikler/Ses.dart';
import 'package:komik_replikler/kategoridenSes.dart';
import 'package:komik_replikler/main.dart';

class KategoriliSesPage extends StatefulWidget {
  KategoriliSesPage({Key? key}) : super(key: key);
  @override
  State<KategoriliSesPage> createState() => _KategoriliSesPageState();
}

class _KategoriliSesPageState extends State<KategoriliSesPage> {
  List<Ses> gorunecekSes = KategoriIsimGetir.sorgula();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(KategoriIsimGetir.kategoriAdiGetir)),
      body: Container(
        color: Colors.yellow.shade300,
        child: ListView.builder(
            padding: EdgeInsets.all(5),
            itemCount: gorunecekSes.length,
            itemBuilder: (contex, index) {
              return Card(
                color: Color.fromRGBO(
                    123, 175, 207, 1), //cardların arka plan rengi
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
                        setState(() {});
                        audioPlayer.play(gorunecekSes[index].link);
                      },
                      child: Icon(Icons.music_note_rounded),
                    ),
                  ),
                  //ses isimleri
                  title: Text(
                    gorunecekSes[index].isim,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  //Seslerin Kategorileri
                  subtitle: Text(gorunecekSes[index].kategori,
                      style: TextStyle(color: Colors.black)),

                  //Sağ Uçtaki Favori Simgesi

                  //Carda basıldığında yapılacaklar
                  onTap: () {
                    audioPlayer.play(gorunecekSes[index].link);
                  },
                ),
              );
            }),
      ),
    );
  }
}
