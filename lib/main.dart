// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:komik_replikler/pages/baslangicPage.dart';
import 'Ses.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
  sesleriListeyeEkle();
}

final AudioPlayer audioPlayer = AudioPlayer();
final List<Ses> sesler = [];
final List<Ses> favoriler = [];
final List<String> kategoriler = [
  "Siyaset",
  "Filmler",
  "Diziler",
  "Futbol",
  "Genel",
  "DJ Dikkat",
  "Aykut Elmas",
  "Yeşilçam"
];

final List<bool> isFavorited = List.filled(sesler.length, false);
List<Ses> get filmReplikleri =>
    sesler.where((e) => e.kategori == "Filmler").toList();
List<Ses> get diziReplikleri =>
    sesler.where((e) => e.kategori == "Diziler").toList();
List<Ses> get siyasetReplikleri =>
    sesler.where((e) => e.kategori == "Siyaset").toList();
List<Ses> get futbolReplikleri =>
    sesler.where((e) => e.kategori == "Futbol").toList();
List<Ses> get genelReplikler =>
    sesler.where((e) => e.kategori == "Genel").toList();
List<Ses> get aykutElmasReplikleri =>
    sesler.where((e) => e.kategori == "Aykut Elmas").toList();
List<Ses> get djDikkatReplikleri =>
    sesler.where((e) => e.kategori == "DJ Dikkat").toList();
List<Ses> get yesilcamReplikleri =>
    sesler.where((e) => e.kategori == "Yeşilçam").toList();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Troll Sesler",
      home: BaslangicPage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

Ses sesOlustur(String isim, String link, String kategori, int id) {
  return Ses(isim, link, kategori, id);
}

void sesleriListeyeEkle() {
  sesler.add(sesOlustur(
      "Ey Amerika!", //ses başlığı
      "https://audio.jukehost.co.uk/szViSvOPDEWQfDs3KKWcTjXSfRoWj812", //ses link
      "Siyaset", //ses kategorisi
      1 //ses idsi
      ));
  sesler.add(sesOlustur(
      "Arkadaşlar ben gidiyorum hakkınızı helal edin",
      "https://audio.jukehost.co.uk/sFDXd4oV3iGrypo3M2m1i84ySpT6nC76",
      "Filmler",
      2));
  sesler.add(sesOlustur(
      "Yavaş lan gaç tane alıyon",
      "https://audio.jukehost.co.uk/aTAEK1TnMCAycRYEXf2IzvOj774eskrS",
      "Aykut Elmas",
      3));
  sesler.add(sesOlustur(
      "SİÜÜÜ",
      "https://audio.jukehost.co.uk/7LPxMCYcmZpDVGVA5tes6ahFae1AJFQc",
      "Futbol",
      4));
  sesler.add(sesOlustur(
      "Sayın bezmenler",
      "https://audio.jukehost.co.uk/NDCjeIs2oSlQOujRw6BUlTSwSyr72GEh",
      "Genel",
      5));
  sesler.add(sesOlustur(
      "Bütün sırrı bozdun ya",
      "https://audio.jukehost.co.uk/RvRsEaMVnaRjwpf3eAM7X97BKTkhHOaQ",
      "Genel",
      6));
  sesler.add(sesOlustur(
      "Şaka lan şaka gül diye",
      "https://audio.jukehost.co.uk/I2xxAimae4RFYAaVN6ZfruVBmX6K8KXq",
      "Diziler",
      7));
  sesler.add(sesOlustur(
      "Aşkım aşkım başlıycam aşkınıza",
      "https://audio.jukehost.co.uk/tLMGJ6y1qrasobjKt5ykbONKEQINz26q",
      "Genel",
      8));
  sesler.add(sesOlustur(
      "40 yapar",
      "https://audio.jukehost.co.uk/CwsI909GAXqC2Rq5tY3h59NTVePJEkMe",
      "Siyaset",
      9));
  sesler.add(sesOlustur(
      "Allah mısınız ulan siz",
      "https://audio.jukehost.co.uk/ZcylDWLG5NEL2LSa7EyPjvsdngzYOJzl",
      "Siyaset",
      10));
  sesler.add(sesOlustur(
      "Şey mi dostum",
      "https://audio.jukehost.co.uk/2dsQiknPT6JXRbSSTpmV4aqWBYNpSuYY",
      "Genel",
      11));
  sesler.add(sesOlustur(
      "I am sorry ha",
      "https://audio.jukehost.co.uk/rve89AOs72syQihUW8Oiw6ayu6oyF2Iu",
      "Futbol",
      12));
  sesler.add(sesOlustur(
      "Ersin üzgün",
      "https://audio.jukehost.co.uk/JeqfA6GiSGkPx0L4C6UZYFp3WUdPv2Fe",
      "Futbol",
      13));
  sesler.add(sesOlustur(
      "Bekle ecelin geliyo",
      "https://audio.jukehost.co.uk/wEjara8GUcklQH9oIPzAptyvAJbvqJMA",
      "Diziler",
      14));
  sesler.add(sesOlustur(
      "Limon ister misin çocuk adam",
      "https://audio.jukehost.co.uk/QQX1wSFqk46IUyoHUQ5eaGE7QptCxr3T",
      "Genel",
      15));
  sesler.add(sesOlustur(
      "Olur olur yeriz",
      "https://audio.jukehost.co.uk/FhvmvoqffWwSNAxyB9Bu7qW1vMCFVdIV",
      "Diziler",
      16));
  sesler.add(sesOlustur(
      "Onu oradan kaldır oğlum",
      "https://audio.jukehost.co.uk/sfWJS55ZJDblhVVjgrgmouiIGYdqfOkQ",
      "Siyaset",
      17));
  sesler.add(sesOlustur(
      "Sen bana 75 lira versene abi",
      "https://audio.jukehost.co.uk/Ftzx1temYd8Dy9VIwL5qBw2jGulNO8L4",
      "Genel",
      18));
  sesler.add(sesOlustur(
      "Seni hiç alakadar etmez",
      "https://audio.jukehost.co.uk/MvoJ968QHdpZC7UhzYVdqRoV5kitYfMB",
      "Diziler",
      19));
  sesler.add(sesOlustur(
      "Bağıran keçi",
      "https://audio.jukehost.co.uk/0Pw8wc7ro449jj84nZe7qTJg6HEwqK9j",
      "Genel",
      20));
  sesler.add(sesOlustur(
      "Bağırma lan milletin içinde",
      "https://audio.jukehost.co.uk/oi8YHr2t7q6PRRvu84KCcNZMvT1uppyA",
      "Filmler",
      21));
  sesler.add(sesOlustur(
      "Öğretmenim bir daha bana ders gönderme",
      "https://audio.jukehost.co.uk/PVyxMhPCUVMXbKItIO8plJtwgIdv2Drm",
      "Genel",
      22));
  sesler.add(sesOlustur(
      "Abi vurma",
      "https://audio.jukehost.co.uk/xUQipEHNHTH3g0z5I9kezXl0AdmR1gXV",
      "Aykut Elmas",
      23));
  sesler.add(sesOlustur(
      "Akasya durağı şaşırma efekti",
      "https://audio.jukehost.co.uk/1ewxneEYdLAvjFZKNW2xPIDOoc5XkzOT",
      "Diziler",
      24));
  sesler.add(sesOlustur(
      "Havagi-Taksim Dayı",
      "https://audio.jukehost.co.uk/FF2dSVY71GD024t7Is2TjAiC7eqakZvk",
      "Genel",
      25));
  sesler.add(sesOlustur(
      "Allah allah allah-Kemal Sunal",
      "https://audio.jukehost.co.uk/fyhKuu3XrBPg6G5G0ltweTtmM7kqna2e",
      "Yeşilçam",
      26));
  sesler.add(sesOlustur(
      "Lan caz yapma",
      "https://audio.jukehost.co.uk/ul296AooiTu08HjkBZd1LpmX9CsXpfDd",
      "Diziler",
      27));
  sesler.add(sesOlustur(
      "Kes Lan",
      "https://audio.jukehost.co.uk/2eg2wIFahtGrZCPJJL9aJerxqY2ubkTo",
      "DJ Dikkat",
      28));
  sesler.add(sesOlustur(
      "Recep ivedik gülüşü",
      "https://audio.jukehost.co.uk/rXg91qw8352e6n4pfKiZXaORnZsKaupg",
      "Filmler",
      29));
  sesler.add(sesOlustur(
      "Sen anan yani",
      "https://audio.jukehost.co.uk/gsiQWXxFngQWbnNquwbuACw7gmcCU2WR",
      "Genel",
      30));
  sesler.add(sesOlustur(
      "Titanik fail flüt",
      "https://audio.jukehost.co.uk/5GxPmNTBtI60YeBeiLc8HEV47fE6KvE8",
      "Genel",
      31));
  sesler.add(sesOlustur(
      "Ulaa Yirmağa gideyrum",
      "https://audio.jukehost.co.uk/yMu5BctZPvM99pZZpoPn6ogRIAKfbxyb",
      "Genel",
      32));
  sesler.add(sesOlustur(
      "Usmanım nereye gidersın",
      "https://audio.jukehost.co.uk/biM2va6KWHYCnGr9tawTBV5RpRxOmjqf",
      "Diziler",
      33));
  sesler.add(sesOlustur(
      "Sen bilirsin prenses",
      "https://audio.jukehost.co.uk/G1EZQChLSixpk4PuF5McmSbqKVL5Ucei",
      "Diziler",
      34));
  sesler.add(sesOlustur(
      "Ulan gerizekalı nereye atıyosun",
      "https://audio.jukehost.co.uk/Zwh9AUkQirvSOMUHYMXTvQinR34zCBdH",
      "Genel",
      35));
  sesler.add(sesOlustur(
      "Adınız aziz mi",
      "https://audio.jukehost.co.uk/EoYVFpyGtMmj9yz0XeaXrUIFtyHnZwVk",
      "Filmler",
      36));
  sesler.add(sesOlustur(
      "Çok kritik-ROK",
      "https://audio.jukehost.co.uk/vJoI7ALzGNb4T0KYmR6V8Mtfgi6SzUwV",
      "Futbol",
      37));
  sesler.add(sesOlustur(
      "Cappuccino",
      "https://audio.jukehost.co.uk/iYbDqDU665o8NQwyZzVooo6NM0DLxckN",
      "Genel",
      38));
  sesler.add(sesOlustur(
      "Durmak yok saplamaya devam gardaş",
      "https://audio.jukehost.co.uk/nr9r9qpl1A5mj1iDrMJmgYyNO53CIOhT",
      "Genel",
      39));
  sesler.add(sesOlustur(
      "Ehe",
      "https://audio.jukehost.co.uk/ggAXcQnpiU7HDNHm6vGbQfR7ZAlXgcDH",
      "Aykut Elmas",
      40));
  sesler.add(sesOlustur(
      "Eee sen şimdi naneyi yimedin mi",
      "https://audio.jukehost.co.uk/diZlYPC0w2VENhzzoA4tUCyNo7kSrq9M",
      "Genel",
      41));
  sesler.add(sesOlustur(
      "Gidecek ülke mi var nereye gideyim",
      "https://audio.jukehost.co.uk/sCO8KcJPeXRy977vyPLxV93yb8NWjSUp",
      "Siyaset",
      42));
  sesler.add(sesOlustur(
      "Eyvallah kanka-Burak Reis",
      "https://audio.jukehost.co.uk/BraJ8MtQBZr6HrTuNh5kg1weyOHkhULI",
      "Genel",
      43));
  sesler.add(sesOlustur(
      "Öyle mi-Kemal Sunal",
      "https://audio.jukehost.co.uk/o8fzfU3jAg7QZ7FpaHHo4fuEWkTbzn4r",
      "Yeşilçam",
      44));
  sesler.add(sesOlustur(
      "Yalancı yalan söyleme inanmıyom",
      "https://audio.jukehost.co.uk/0zLzPdJjY2vPvqb9GmkaAGEZmsqqVS35",
      "Genel",
      45));
  sesler.add(sesOlustur(
      "La kedii",
      "https://audio.jukehost.co.uk/3fCatCJqiIafCRCfJxNgKU6uFE1popOe",
      "Genel",
      46));
  sesler.add(sesOlustur(
      "Lan manyağım",
      "https://audio.jukehost.co.uk/bD8Ba9pT8np7lVa7Zq0fyUdbtiDXuddV",
      "Diziler",
      47));
  sesler.add(sesOlustur(
      "Oha chat ne diyo",
      "https://audio.jukehost.co.uk/wJoI1bQdqXMuofhvpBHfsM1Vc0VqeUsQ",
      "Yayıncılar",
      48));
  sesler.add(sesOlustur(
      "Mehmeti şişlemişer",
      "https://audio.jukehost.co.uk/vtjsZV22gnsjWmGvHvDl3YnDs3ysR2dl",
      "Aykut Elmas",
      49));
  sesler.add(sesOlustur(
      "Niye emoğlu",
      "https://audio.jukehost.co.uk/Y4W8UJhYDX8ZmHXRo5JGP3pYcSkpR3ez",
      "Genel",
      50));
  sesler.add(sesOlustur(
      "Napim",
      "https://audio.jukehost.co.uk/0tSzpL9afWtse7zYcSeFroUugrUr8AEm",
      "Genel",
      51));
  sesler.add(sesOlustur(
      "Masaya çık tepin istersen",
      "https://audio.jukehost.co.uk/mgzH3WLmi3ODvT287NpK1GrfrmD0K75s",
      "Siyaset",
      52));
  sesler.add(sesOlustur(
      "Coffin dance",
      "https://audio.jukehost.co.uk/yLhBqXHwtPKdvrhy61FwwCto9CxKyut2",
      "Müzik",
      53));
  sesler.add(sesOlustur(
      "His name is John Cena!",
      "https://audio.jukehost.co.uk/pPYJpvpD1O7JRQnZPFSJOt5rsp1sdcL8",
      "Genel",
      54));
  sesler.add(sesOlustur(
      "Keloğlan gülme sesi",
      "https://audio.jukehost.co.uk/4JgLJM8jCQXaPPyRVYnUYMZHOw67X3zy",
      "Genel",
      55));
  sesler.add(sesOlustur(
      "Keşke bu arkadaşa bişey içirmeseydik",
      "https://audio.jukehost.co.uk/ZqztiVApeXXQcFY885LXZtxXdV8Ulvmx",
      "Filmler",
      56));
  sesler.add(sesOlustur(
      "O piti piti karamela sepeti",
      "https://audio.jukehost.co.uk/AaomFngjb1tGEyLf2iNdVxwhtot2sg9a",
      "Müzik",
      57));
  sesler.add(sesOlustur(
      "Paşam günaydın",
      "https://audio.jukehost.co.uk/uzlmUjf7L1yXpbrQ9P8TG13LGfsP6nhO",
      "Aykut Elmas",
      58));
  sesler.add(sesOlustur(
      "S ve kadim dostu J",
      "https://audio.jukehost.co.uk/vrMdIlc7BhCBLNY7GrEO5ImfYvMGeVJQ",
      "Siyaset",
      59));
  sesler.add(sesOlustur(
      "Sen aklına koyduğun her şeyi başarırsın",
      "https://audio.jukehost.co.uk/F6tvj0Fx2WSIQgzH2dtmPBVTZJzXCCBb",
      "Genel",
      60));
  sesler.add(sesOlustur(
      "Yarra beni",
      "https://audio.jukehost.co.uk/Yw8us2Wofs5S5RPO2DHXF7HN6zJ9q531",
      "Filmler",
      61));
  sesler.add(sesOlustur(
      "Ya ne öyle geliyorsun aklımız gitti",
      "https://audio.jukehost.co.uk/8Gm6f6VvqBcZsBff0Gj5JhMjf7M9GjrJ",
      "Filmler",
      62));
  sesler.add(sesOlustur(
      "Sensin sensin o kardeşim",
      "https://audio.jukehost.co.uk/qUooNz0L6Ca1ZOTYQ9ICmSvjqPimylKR",
      "Genel",
      63));
  sesler.add(sesOlustur(
      "Sansür sesi",
      "https://audio.jukehost.co.uk/DQkjuqxbFJ57ZtjHzg1luvBESZAgx9Hn",
      "Genel",
      64));
  sesler.add(sesOlustur(
      "Bak sen-Kemal Sunal",
      "https://audio.jukehost.co.uk/iOajJ283QsO4qbkzBB0bkg8YTlxoQBhe",
      "Yeşilçam",
      65));
  sesler.add(sesOlustur(
      "Ben ekonomistim",
      "https://audio.jukehost.co.uk/ucCZsemMMORPOb9mmBSGMLSj3NUlzp3O",
      "Siyaset",
      66));
  sesler.add(sesOlustur(
      "Bak uçuyorsun melih",
      "https://audio.jukehost.co.uk/R1z1wNv1W0MEgRiExBQn5pHUhDVZj4tj",
      "Genel",
      67));
  sesler.add(sesOlustur(
      "Salak mısın cemile",
      "https://audio.jukehost.co.uk/f7P9jQRiqgTkVcC3N5e9XFMoYQYhM7ws",
      "Diziler",
      68));
  sesler.add(sesOlustur(
      "Bana para ver",
      "https://audio.jukehost.co.uk/Ji1mTOOjY7hrzAu4VcbKh0R1mNxcL4Ay",
      "Aykut Elmas",
      69));
  sesler.add(sesOlustur(
      "Burdayım ben görmüyo musun",
      "https://audio.jukehost.co.uk/emuZ7FLYgh7oYGzkUqx2e9IcP1ASK9Uh",
      "Diziler",
      70));
  sesler.add(sesOlustur(
      "İncinmişsin dedi",
      "https://audio.jukehost.co.uk/3JsHiMhs9ZxX05KieRtWUvjjR0OASvtw",
      "Genel",
      71));
  sesler.add(sesOlustur(
      "Aga bee-Oguz Sasi",
      "https://audio.jukehost.co.uk/4IqA4qr81fnClFE3Zzeh1egeftBibC9z",
      "Yayıncılar",
      72));
  sesler.add(sesOlustur(
      "Anana sor-Abdülhey",
      "https://audio.jukehost.co.uk/6s6X1PjEgCXuYRaUED4q87lvfv2ndWyO",
      "Diziler",
      73));
  sesler.add(sesOlustur(
      "Keloğlan geçiş efekti",
      "https://audio.jukehost.co.uk/vq0SmOuJYSvybnqmXrbuTOsrsSsb4Li2",
      "Genel",
      74));
  sesler.add(sesOlustur(
      "Aynen kardeşim aras kargo",
      "https://audio.jukehost.co.uk/G17O3Dyyb7xm1076PNYmQWY9wN1m7QKy",
      "Genel",
      75));
  sesler.add(sesOlustur(
      "Anne benim, beniiğğğiimmm",
      "https://audio.jukehost.co.uk/o1oOHY7c52t8aM4nVhKh6XK1wzKEjyIb",
      "Genel",
      76));
  sesler.add(sesOlustur(
      "Dul dul dul",
      "https://audio.jukehost.co.uk/5o1vWcZZc0q1jTV14YENsqQOwn41xLUw",
      "Müzik",
      77));
  sesler.add(sesOlustur(
      "Kötü bir alışkanlığınız var mı",
      "https://audio.jukehost.co.uk/O3EfTepMowxtBldq89MuV02WjsRjrvmM",
      "Genel",
      78));
  sesler.add(sesOlustur(
      "Kardeşim helikopter",
      "https://audio.jukehost.co.uk/0MyVPVQDge8pJGXxs657CBCcxy4flFAp",
      "Müzik",
      79));
  sesler.add(sesOlustur(
      "Okul kıyafeti giyecek miyiz",
      "https://audio.jukehost.co.uk/VZtziCGSwxkfJFYvYqre43QVbk8uIJRA",
      "Genel",
      80));
  sesler.add(sesOlustur(
      "Öncelikle selamun aleyküm arkadaşlar",
      "https://audio.jukehost.co.uk/tzBKVo89EpjtFbtFOEHDmfVwL23RC6jk",
      "DJ Dikkat",
      81));
  sesler.add(sesOlustur(
      "Sen kafayı sıyırmışsın",
      "https://audio.jukehost.co.uk/LzIekTf3KLtMcYakvGCfLX8Rn4cLyJyO",
      "Genel",
      82));
  sesler.add(sesOlustur(
      "Al sana bombe",
      "https://audio.jukehost.co.uk/T5KFqWy3mDJx1hENmfIYPvv2UPe9w3bH",
      "Genel",
      83));
}
