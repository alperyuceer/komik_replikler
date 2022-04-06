// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:komik_replikler/pages/MainPage.dart';

class BaslangicPage extends StatelessWidget {
  const BaslangicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.black,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 250,
                  ),
                  Text(
                    "*İnternet bağlantısı gerekmektedir*",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.yellow),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "*Argo cümleler bulunmaktadır*",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.yellow),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPage()));
                      },
                      child: Text("ONAYLIYORUM")),
                ],
              ),
            )),
      ),
    );
  }
}
