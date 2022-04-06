// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class IletisimPage extends StatefulWidget {
  const IletisimPage({Key? key}) : super(key: key);

  @override
  State<IletisimPage> createState() => _IletisimPageState();
}

class _IletisimPageState extends State<IletisimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İletişim"),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.mail,
                    color: Colors.yellow,
                  ),
                  title: const Text(
                    "E-POSTA: yuceeralper06@gmail.com",
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.yellow,
                  ),
                  title: const Text(
                    "TELEFON: +905070050883",
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
