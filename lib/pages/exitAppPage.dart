// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:komik_replikler/pages/exitAppPageEnd.dart';

class ExitAppPage extends StatefulWidget {
  const ExitAppPage({Key? key}) : super(key: key);

  @override
  State<ExitAppPage> createState() => _ExitAppPageState();
}

class _ExitAppPageState extends State<ExitAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Uygulamadan Çıkış Ekranı"),
        ),
        body: Container(
          color: Colors.yellow.shade300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gerçekten çıkmak istiyor musun?",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExitAppPageEnd()));
                        },
                        child: Text(
                          "EVET",
                          style: TextStyle(fontSize: 30),
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("HAYIR", style: TextStyle(fontSize: 30)))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
