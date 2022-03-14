import 'dart:io';

import 'Person.dart';
import 'tugas.dart';

///tiap class punya ciri khas msg"
class Mahasiswa extends Person implements Tugas {
  int? SKS;
  bool? Status = false;
  double? IPS = 0;
  double? IPK = 0;
  int? totalSKS = 0; //minimal 2 maks 24
  //kurang cara memberikan if bool keluar class ke string
  Mahasiswa(String? nama, int? usia, int? SKS, bool? Status, double? IPS,
      double? IPK, int? totalSKS)
      : super(nama, usia) {
    if (SKS! < 2 || SKS > 24) {
      int? angka = 0;
      int? a;
      while (angka == 0) {
        print('Input Ulang SKS : ');
        String? coba_input = stdin.readLineSync();
        a = int.parse(coba_input!);
        if (a < 0 || a > 24) {
          angka = 0;
        } else {
          angka = 1;
        }
      }
      this.SKS = a;
    } else {
      this.SKS = SKS;
    }
    this.IPK = 0;
    this.IPS = IPS;
    setIPS(this.IPS!);
    this.totalSKS = (totalSKS)!;
    this.Status = Status;
  }

  void setIPS(double a) {
    IPS = a;
    if (IPK == 0) {
      IPK = a;
    } else {
      IPK = (IPK! + a) / 2;
    }
  }

  void PerhitunganTotalSKS(int b) {
    this.totalSKS = this.totalSKS! + b;
    this.SKS = b;
  }

  get Status_Mahasiswa {
    //aktif atau tidak
    return Status;
  }

  get nilai_IPS {
    return IPS;
  }

  get nilai_IPK {
    return IPK;
  }

  get nilai_SKS {
    return SKS;
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Mahasiswa';
  }
}
