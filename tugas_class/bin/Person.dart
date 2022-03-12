class Person {
  //Pegawai
  String? _nama;
  int? _usia;

  Person(String? nama, int? usia) {
    this._nama = nama;
    this._usia = usia;
  }
  set nama(String data) {
    _nama = data;
  }

  String get nama => this._nama!;

  set usia(int dtUsia) {
    _usia = dtUsia;
  }

  int get usia => this._usia!;
}
