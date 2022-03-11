import 'Person.dart';
import 'tugas.dart';

///tiap class punya ciri khas msg"
class Mahasiswa extends Person implements Tugas {
  int? SKS;
  bool? Status;
  double? IPS;
  double? IPK;
  int? totalSKS; //minimal 2 maks 24
  //kurang cara memberikan if bool keluar class ke string
  Mahasiswa(String? nama, int? usia, int? SKS, bool? Status, double? IPS,
      double? IPK, int? totalSKS)
      : super(nama, usia) {
    if (SKS! >= 2 &&
        SKS! <= 24 &&
        IPS! >= 0 &&
        IPS! <= 4.0 &&
        IPK! >= 0 &&
        IPK! <= 4.0) {
      this.SKS = SKS;
      this.IPK = IPK;
      this.IPS = IPS;
      this.totalSKS = totalSKS;
      this.Status = Status;
    } else {
      this.SKS = null;
    }
  }
  get total_SKS {
    return totalSKS;
  }

  get Status_Mahasiswa {
    //aktif atau tidak
    return Status;
  }

  get nilai_IPS {
    return IPS;
  }

  get nilai_IPK {
    return IPK;
  }

  get nilai_SKS {
    return SKS;
  }

  @override
  String peran() {
    // TODO: implement tugas
    return 'Mahasiswa';
  }
}
