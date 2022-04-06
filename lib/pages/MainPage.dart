// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:komik_replikler/main.dart';
import 'package:komik_replikler/appbars/main_app_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context),
      body: Container(
        color: Colors.yellow.shade300, //arka plan

        child: ListView.builder(
            padding: EdgeInsets.all(5),
            itemCount: sesler.length,
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
                        setState(() {
                          //isPlaying[index] = !isPlaying[index];
                        });
                        audioPlayer.play(sesler[index].link);
                      },
                      //play'e basıldığında icon değişimi buraya yazılacak YAZILIRSA EĞER
                      child: Icon(Icons.music_note_rounded),
                    ),
                  ),
                  //ses isimleri
                  title: Text(
                    sesler[index].isim,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  //Seslerin Kategorileri
                  subtitle: Text(sesler[index].kategori,
                      style: TextStyle(color: Colors.black)),

                  //Sağ Uçtaki Favori Simgesi
                  trailing: InkWell(
                    onTap: () {
                      setState(() {
                        isFavorited[index] = !isFavorited[index];
                        if (isFavorited[index]) {
                          favoriler.add(sesler[index]);
                        } else {
                          favoriler.removeWhere((item) => item.id == index + 1);
                        }
                      });
                    },
                    child: Icon(Icons.favorite,
                        color:
                            //isFavorited'in true false durumuna göre iconun renk değişimi
                            (isFavorited[index]) ? Colors.red : Colors.black12),
                  ),
                  //Carda basıldığında yapılacaklar
                  onTap: () {
                    audioPlayer.play(sesler[index].link);
                  },
                ),
              );
            }),
      ),
    );
  }
}
