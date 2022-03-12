import 'Person.dart';
import 'tugas.dart';
import 'Pegawai.dart';
import 'dart:io';

///tiap class punya ciri khas msg"
///
class Dosen_Tamu extends Pegawai implements Tugas {
  int? Gaji; //gaji * 40 rb per sks yg didapat
  int? jumlah_sks;
  int? penghasilan;
  //tambahan
  int? TambahanGaji;
  int? tunjangankehadiran;

  Dosen_Tamu(String? nama, int? usia, int? Gaji, int? TambahanGaji,
      int? penghasilan, int? tunjangankehadiran, int? jumlahsks)
      : super(nama, usia, Gaji, penghasilan) {
    this.Gaji = Gaji;
    this.TambahanGaji = TambahanGaji;
    this.jumlah_sks = jumlahsks;
    this.penghasilan = penghasilan;
    this.tunjangankehadiran = tunjangankehadiran;
  }
  void penghasilan_bulanan() {
    this.penghasilan = (this.TambahanGaji! + this.tunjangankehadiran!);
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Dosen Tamu';
  }
}

class Dosen_LB extends Pegawai implements Tugas {
  int? Gaji = 0;
  int? jumlah_sks;
  int? penghasilan;
  //tambahan
  int? TambahanGaji = 0;
  Dosen_LB(String? nama, int? usia, int? Gaji, int? penghasilan,
      int? TambahanGaji, int? jumlahsks)
      : super(nama, usia, Gaji, penghasilan) {
    this.Gaji = Gaji;
    this.TambahanGaji = TambahanGaji;
    this.jumlah_sks = jumlahsks;
    this.penghasilan = penghasilan;
  }
  void penghasilan_bulanan() {
    this.penghasilan = (this.TambahanGaji! + this.Gaji!);
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Dosen LB';
  }
}

class Dosen_Tetap extends Dosen_Tamu implements Tugas {
  Dosen_Tetap(String? nama, int? usia, int? Gaji, int? TambahanGaji,
      int? penghasilan, int? tunjangankehadiran, int? jumlahsks)
      : super(nama, usia, Gaji, TambahanGaji, penghasilan, tunjangankehadiran,
            jumlahsks);

  void penghasilan_bulanan() {
    this.penghasilan =
        (this.TambahanGaji! + this.Gaji! + this.tunjangankehadiran!);
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Dosen Tamu';
  }
}
