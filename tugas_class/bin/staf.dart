import 'Person.dart';
import 'tugas.dart';

///tiap class punya ciri khas msg"
class Staf extends Person implements Tugas {
  int? SKS;

  Staf(String? nama, int? usia, int? SKS) : super(nama, usia) {
    this.SKS = SKS;
  }
  get total_SKS {
    return SKS;
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Mahasiswa';
  }
}
