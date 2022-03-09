import 'Jenis.dart';
import 'Mahasiswa.dart';
import 'tugas.dart';
import 'Pegawai.dart';

void main(List<String> arguments) {
  var sm1 = Mahasiswa_s("Udin", 20, 2000);
  print('Nama ${sm1.nama} - Tugas : ${sm1.peran()}');
  sm1.target();
  sm1.absensi();
  sm1.peran();
  print('--');
  var sm2 = Dosen_Tetap("Pak H", 25, 3000000);
  print('Nama ${sm2.nama} - Tugas : ${sm2.peran()} - Gaji : ${sm2.Gaji}');
  print('--');
  var sm3 = Dosen_tidakTetap("Pak G", 45, 6000000);
  print('Nama ${sm3.nama} - Tugas : ${sm3.peran()} - Gaji : ${sm3.Gaji}');
  print('--');
}
