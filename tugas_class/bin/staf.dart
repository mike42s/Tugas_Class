import 'Pegawai.dart';
import 'Person.dart';
import 'tugas.dart';
import 'dart:io';

///tiap class punya ciri khas msg"
class Staf extends Pegawai implements Tugas {
  int? cuti;
  bool? absensi;
  int? jumlah_absensi;
  int? tunjangankehadiran;

  Staf(String? nama, int? usia, int? Gaji, int? penghasilan, int? cuti,
      bool? absensi, int? jumlah_absensi, int? tunjangankehadiran)
      : super(nama, usia, Gaji, penghasilan) {
    this.cuti = cuti;
    this.absensi = absensi;
    this.jumlah_absensi = jumlah_absensi;
    this.tunjangankehadiran = tunjangankehadiran;
  }
  void pengajuan_cuti() {
    stdout.write("Pengajuan Cuti\n");
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Staf';
  }
}
