import 'Mahasiswa.dart';
import 'tugas.dart';
import 'Pegawai.dart';

class Mahasiswa_s extends Mahasiswa with Absensi, Target {
  Mahasiswa_s(String? nama, int? usia, int? SKS) : super(nama, usia, SKS);
}

class Dosen_tetap extends Dosen_Tetap with TanggungJawab {
  Dosen_tetap(String? nama, int? usia, int? Gaji) : super(nama, usia, Gaji);
}

class Dosen_tidakTetap extends Dosen_TidakTetap with TanggungJawab {
  Dosen_tidakTetap(String? nama, int? usia, int? Gaji)
      : super(nama, usia, Gaji);
}

// class Staf extends Dosen with TanggungJawab {
//   Staf(String? nama, int? usia, int? Gaji) : super(nama, usia, Gaji);
// }
