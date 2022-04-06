// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExitAppPageEnd extends StatefulWidget {
  const ExitAppPageEnd({Key? key}) : super(key: key);

  @override
  State<ExitAppPageEnd> createState() => _ExitAppPageEndState();
}

class _ExitAppPageEndState extends State<ExitAppPageEnd> {
  final textController = TextEditingController();
  String exitCheck = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Son Uyarı!"),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bak bi daha sormam, çıkmak istiyor musun?",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("HAYIR", style: TextStyle(fontSize: 30))),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "Çıkmak için aşağıya 'Eminim' yaz",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: "'Eminim' yaz",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      exitCheck = textController.text;
                      if (exitCheck == "Eminim") {
                        SystemNavigator.pop();
                      } else {
                        Fluttertoast.showToast(
                            msg: "Yanlış yazdın: $exitCheck");
                      }
                    });
                  },
                  child: Text(
                    "YAZDIM",
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
        )),
      ),
    );
  }
}
