import 'Mahasiswa.dart';
import 'tugas.dart';
import 'Dosen.dart';
import 'staf.dart';

class Mahasiswa_s extends Mahasiswa with Absensi, Target {
  Mahasiswa_s(String? nama, int? usia, int? SKS, bool? Status, double? IPS,
      double? IPK, int? totalSKS)
      : super(nama, usia, SKS, Status, IPS, IPK, totalSKS);
}

class Dosen_1 extends Dosen_LB with TanggungJawab {
  Dosen_1(String? nama, int? usia, int? Gaji, int? jumlah_sks, int? penghasilan,
      int? TambahanGaji)
      : super(nama, usia, Gaji, jumlah_sks, penghasilan, TambahanGaji);
}

class Dosen_2 extends Dosen_Tamu {
  Dosen_2(String? nama, int? usia, int? Gaji, int? TambahanGaji,
      int? penghasilan, int? tunjangankehadiran, int? jumlahsks)
      : super(nama, usia, Gaji, TambahanGaji, penghasilan, tunjangankehadiran,
            jumlahsks);
}

class Dosen_3 extends Dosen_Tetap {
  Dosen_3(String? nama, int? usia, int? Gaji, int? TambahanGaji,
      int? penghasilan, int? tunjangankehadiran, int? jumlahsks)
      : super(nama, usia, Gaji, TambahanGaji, penghasilan, tunjangankehadiran,
            jumlahsks);
}

class Staf_1 extends Staf {
  Staf_1(String? nama, int? usia, int? Gaji, int? penghasilan, int? cuti,
      bool? absensi, int? jumlah_absensi, int? tunjangankehadiran)
      : super(nama, usia, Gaji, penghasilan, cuti, absensi, jumlah_absensi,
            tunjangankehadiran);
}
