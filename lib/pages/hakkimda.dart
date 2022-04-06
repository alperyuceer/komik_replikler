import 'package:flutter/material.dart';
import 'package:komik_replikler/pages/iletisimPage.dart';

class HakkimdaPage extends StatelessWidget {
  const HakkimdaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hakkımda")),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " Merhaba, ben Alper Yüceer. Ankara doğumlu, Selçuk Üniversitesi Bilgisayar Mühendisliği 2.sınıf öğrencisiyim. Kendimi mobil uygulama geliştirme alanında kendimi geliştirmeye çalışıyorum. Bu uygulamada kendimi geliştirme aşamasında benim için çok önemli. İstek ve önerilerinizi iletişim sayfasında bulunan e-posta ya da telefon ile bana iletebilirsiniz. ",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IletisimPage()));
              },
              child: Text(
                "İLETİŞİM SAYFASI",
                style: TextStyle(fontSize: 35),
              ),
              color: Colors.black,
              textColor: Colors.yellow.shade400,
            )
          ],
        ),
      ),
    );
  }
}
