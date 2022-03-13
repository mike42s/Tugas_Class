import 'Pegawai.dart';
import 'Person.dart';
import 'tugas.dart';
import 'dart:io';

///tiap class punya ciri khas msg"
class Staf extends Pegawai implements Tugas {
  int cuti = 12;
  bool? absensi;
  int? jumlah_absensi;
  int? tunjangankehadiran = 0;

  Staf(String? nama, int? usia, int? Gaji, int? penghasilan, int? cuti,
      bool? absensi, int? jumlah_absensi, int? tunjangankehadiran)
      : super(nama, usia, Gaji, penghasilan) {
    this.cuti = cuti!;
    this.absensi = absensi;
    this.jumlah_absensi = jumlah_absensi;
    this.tunjangankehadiran = tunjangankehadiran;
  }
  void pengajuan_cuti(bool? a) {
    if (a!) {
      stdout.write("Pengajuan Cuti Berhasil\n");
      cuti--;
      stdout.write("Sisa Cuti : $cuti hari");
      stdout.write("\n");
    } else {
      stdout.write("Pengajuan Cuti Tidak Berhasil\n");
    }
  }

  void absensi_perhitungan(bool? x) {
    if (x!) {
      this.tunjangankehadiran =
          this.tunjangankehadiran! + this.jumlah_absensi! * 20000;
      stdout.write("Tunjangan Kehadiran Berhasil : ${this.tunjangankehadiran}");
      stdout.write("\n");
    } else {
      stdout.write(
          "Tunjangan Kehadiran tidak ditambahkan : ${this.tunjangankehadiran}");
      stdout.write("\n");
    }
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Staf';
  }
}
