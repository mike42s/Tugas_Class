import 'Person.dart';
import 'tugas.dart';

///tiap class punya ciri khas msg"
class Dosen_Tetap extends Person implements Tugas {
  int? Gaji;

  Dosen_Tetap(String? nama, int? usia, int? Gaji) : super(nama, usia) {
    this.Gaji = Gaji;
  }
  get total_Gaji {
    return Gaji;
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Dosen tetap';
  }
}

///tiap class punya ciri khas msg"
class Dosen_TidakTetap extends Person implements Tugas {
  int? Gaji;

  Dosen_TidakTetap(String? nama, int? usia, int? Gaji) : super(nama, usia) {
    this.Gaji = Gaji;
  }
  get total_Gaji {
    return Gaji;
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Dosen tidak tetap';
  }
}
