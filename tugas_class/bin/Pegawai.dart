import 'Person.dart';
import 'tugas.dart';

///tiap class punya ciri khas msg"
class Dosen_Tamu extends Person implements Tugas {
  int? Gaji; //gaji * 40 rb per sks yg didapat
  int? TambahanGaji;
  int? jumlah_sks;
  int? penghasilan;

  Dosen_Tamu(String? nama, int? usia, int? Gaji, int? TambahanGaji,
      int? jumlah_sks, int? penghasilan)
      : super(nama, usia) {
    this.Gaji = Gaji;
  }
  get total_Gaji {
    return Gaji;
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Dosen Tamu';
  }
}

class Dosen_LB extends Dosen_Tamu implements Tugas {
  int? Gaji;
  int? tunjangankehadiran;

  Dosen_LB(String? nama, int? usia, int? Gaji, int? TambahanGaji,
      int? jumlah_sks, int? penghasilan, int? tunjangankehadiran)
      : super(nama, usia, Gaji, TambahanGaji, jumlah_sks, penghasilan) {
    //tinggal isi apa yg mau di set dri yg diatas masih kurang apa
    this.tunjangankehadiran = tunjangankehadiran;
  }
  get total_Gaji {
    return Gaji;
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Dosen LB';
  }
}

///tiap class punya ciri khas msg"
class Dosen_Tetap extends Dosen_LB implements Tugas {
//gaji * 40 rb per sks yg didapat
  int? TambahanGaji;

  Dosen_Tetap(String? nama, int? usia, int? Gaji, int? TambahanGaji,
      int? jumlah_sks, int? penghasilan, int? tunjangankehadiran)
      : super(nama, usia, Gaji, TambahanGaji, jumlah_sks, penghasilan,
            tunjangankehadiran) {
    //tinggal isi apa yg mau di set dri yg diatas masih kurang apa
  }

  get total_Gaji {
    return Gaji;
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Dosen tetap';
  }
}
