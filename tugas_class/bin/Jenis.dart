import 'Mahasiswa.dart';
import 'tugas.dart';
import 'Pegawai.dart';

class Mahasiswa_s extends Mahasiswa with Absensi, Target {
  Mahasiswa_s(String? nama, int? usia, int? SKS, bool? Status, double? IPS,
      double? IPK, int? totalSKS)
      : super(nama, usia, SKS, Status, IPS, IPK, totalSKS);
}

class Dosen_tetap extends Dosen_Tetap with TanggungJawab {
  Dosen_tetap(String? nama, int? usia, int? Gaji, int? TambahanGaji,
      int? jumlah_sks, int? penghasilan, int? tunjangankehadiran)
      : super(nama, usia, Gaji, TambahanGaji, jumlah_sks, penghasilan,
            tunjangankehadiran);
}

// class Staf extends Dosen with TanggungJawab {
//   Staf(String? nama, int? usia, int? Gaji) : super(nama, usia, Gaji);
// }
