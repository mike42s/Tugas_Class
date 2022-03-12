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
    } else {
      stdout.write("Pengajuan Cuti Tidak Berhasil\n");
    }
  }

  void absensi_perhitungan(bool? x, int? bonus) {
    if (x!) {
      this.tunjangankehadiran = this.tunjangankehadiran! + bonus!;
      stdout.write("Tunjangan Kehadiran Berhasil : ${this.tunjangankehadiran}");
    } else {
      stdout.write(
          "Tunjangan Kehadiran tidak ditambahkan : ${this.tunjangankehadiran}");
    }
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Staf';
  }
}
