import 'Jenis.dart';
import 'Mahasiswa.dart';
import 'tugas.dart';
import 'Pegawai.dart';

void main(List<String> arguments) {
  var sm1 = Mahasiswa_s("Siapapun", 20, 5, true, 3.0, 3.5, 50);
  print(
      'Nama ${sm1.nama} - Usia : ${sm1.usia} - Status : ${sm1.Status} - IPS : ${sm1.IPS} - IPK : ${sm1.IPK} - Total SKS : ${sm1.totalSKS}');
  sm1.target();
  print('--');
  var sm2 = Dosen_Tetap("nama", 33, 2221, 22222, 2222, 2222, 100);
  print(
      'Nama ${sm2.nama} - Tugas : ${sm2.peran()} - Gaji : ${sm2.Gaji} - tunjangankehadiran : ${sm2.tunjangankehadiran}');
  print('--');
}
