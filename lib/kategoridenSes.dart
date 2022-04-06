import 'package:komik_replikler/Ses.dart';
import 'package:komik_replikler/main.dart';

class KategoriIsimGetir {
  static String kategoriAdiGetir = "";

  static List<Ses> sorgula() {
    if (kategoriAdiGetir == "Filmler") {
      return filmReplikleri;
    }
    if (kategoriAdiGetir == "Siyaset") {
      return siyasetReplikleri;
    }
    if (kategoriAdiGetir == "Diziler") {
      return diziReplikleri;
    }
    if (kategoriAdiGetir == "Aykut Elmas") {
      return aykutElmasReplikleri;
    }
    if (kategoriAdiGetir == "DJ Dikkat") {
      return djDikkatReplikleri;
    }
    if (kategoriAdiGetir == "Futbol") {
      return futbolReplikleri;
    }
    if (kategoriAdiGetir == "Genel") {
      return genelReplikler;
    }
    if (kategoriAdiGetir == "Yeşilçam") {
      return yesilcamReplikleri;
    } else {
      return [];
    }
  }
}
