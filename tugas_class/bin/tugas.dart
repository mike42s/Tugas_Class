import 'Mahasiswa.dart';

class Tugas {
  String peran() {
    return '';
  }
}

//Mixin untuk setiap tugas yang ada (yang bisa samaan)
mixin Absensi {
  void absensi() {
    print('absensi');
  }
}
mixin TanggungJawab {
  void tanggjwb() {
    print("tanggung jawab");
  }
}
mixin Target {
  void target() {
    print('target');
  }
}
