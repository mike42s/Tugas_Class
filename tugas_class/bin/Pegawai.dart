import 'Person.dart';
import 'tugas.dart';

class Pegawai extends Person implements Tugas {
  int? Gaji;
  int? penghasilan;

  Pegawai(String? nama, int? usia, int? Gaji, int? penghasilan)
      : super(nama, usia) {
    this.nama = nama!;
    this.usia = usia!;
    this.Gaji = Gaji;
    this.penghasilan = penghasilan;
  }
  void setGaji(int? a) {
    this.Gaji = a;
  }

  void penghasilan_bulanan() {
    this.penghasilan = this.Gaji!;
  }

  int get penghasilan_sebulan => this.penghasilan!;

  @override
  String peran() {
    // TODO: implement tugas
    return 'Pegawai Biasa';
  }
}
