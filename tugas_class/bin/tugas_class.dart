import 'Jenis.dart';
import 'Mahasiswa.dart';
import 'tugas.dart';
import 'Pegawai.dart';
import 'dart:io';

void main(List<String> arguments) {
  // var sm1 = Mahasiswa_s("Siapapun", 20, 5, true, 3.0, 3.5, 50);
  // print(
  //     'Nama ${sm1.nama} - Usia : ${sm1.usia} - Status : ${sm1.Status} - IPS : ${sm1.IPS} - IPK : ${sm1.IPK} - Total SKS : ${sm1.totalSKS}');
  // sm1.target();
  // print('--');
  // var sm2 = Dosen_Tetap("nama", 33, 2221, 22222, 2222, 2222, 100);
  // print(
  //     'Nama ${sm2.nama} - Tugas : ${sm2.peran()} - Gaji : ${sm2.Gaji} - tunjangankehadiran : ${sm2.tunjangankehadiran}');
  // print('--');

  String? Input;
  List myList = [];
  int counter_mylist = 0;
  String? coba_input;
  int exit = 0;
  int? menu;
  while (exit != 1) {
    stdout.write(
        "Login Sebagai? : \n1.Sebagai Mahasiswa\n2.Sebagai Pegawai\n3.Cek All\n");
    Input = stdin.readLineSync();
    menu = int.parse(Input!);
    if (menu == 1) {
      stdout.write("Mahasiswa \n");
      stdout.write("Nama : ");
      String? Nama = stdin.readLineSync(); //Nama
      stdout.write("\nUsia : ");
      coba_input = stdin.readLineSync();
      int? Usia = int.parse(coba_input!);
      stdout.write("\nSKS : ");
      coba_input = stdin.readLineSync();
      int? SKS = int.parse(coba_input!); //SKS
      stdout.write("\ntotalSKS : ");
      coba_input = stdin.readLineSync();
      int? totakSKS = int.parse(coba_input!); //totalSKS
      stdout.write("\nStatus Mahasiswa? \nTrue = 1, False = 2 : ");
      coba_input = stdin.readLineSync();
      int? Status = int.parse(coba_input!); //Status
      stdout.write("\nIPK : ");
      coba_input = stdin.readLineSync();
      double? IPK = double.parse(coba_input!); //IPK
      stdout.write("\nIPS : ");
      coba_input = stdin.readLineSync();
      double? IPS = double.parse(coba_input!); //IPS
      bool? Status_If;
      if (Status == 1) {
        Status_If = true;
      } else {
        Status_If = false;
      }
      stdout.write("\n");
      myList.add(Mahasiswa_s(Nama, Usia, SKS, Status_If, IPS, IPK, totakSKS));
      print(
          'Nama ${myList[counter_mylist].nama} - Usia : ${myList[counter_mylist].usia} - SKS : ${myList[counter_mylist].SKS} -Mahasiswa Aktif : ${myList[counter_mylist].Status} - IPS : ${myList[counter_mylist].IPS} - IPK : ${myList[counter_mylist].IPK} - Total SKS : ${myList[counter_mylist].totalSKS}');
      counter_mylist++;
    } else if (menu == 2) {
      stdout.write(
          "Login Sebagai Pegawai? : \n1.Sebagai Dosen\n2.Sebagai Staf\n");
      int? menu2;
      Input = stdin.readLineSync();
      menu2 = int.parse(Input!);
      if (menu2 == 1) {
        stdout.write(
            "Login Sebagai Dosen? : \n1.Sebagai Dosen Tamu\n2.Sebagai Dosen Tetap\n3.Sebagai Dosen LB\n");
        int? menu3;
        Input = stdin.readLineSync();
        menu3 = int.parse(Input!);
        if (menu3 == 1) {
          stdout.write("Login Sebagai Dosen Tamu\n");
        } else if (menu3 == 2) {
          stdout.write("Login Sebagai Dosen Tetap\n");
        } else if (menu3 == 3) {
          stdout.write("Login Sebagai Dosen LB\n");
        }
      } else if (menu == 2) {
        stdout.write("Login Sebagai Staf\n");
      } else {
        break;
      }
    } else if (menu == 3) {
      for (int i = 0; i < myList.length; i++) {
        print(
            'Nama ${myList[i].nama} - Usia : ${myList[i].usia} - SKS : ${myList[i].SKS} -Mahasiswa Aktif : ${myList[i].Status} - IPS : ${myList[i].IPS} - IPK : ${myList[i].IPK} - Total SKS : ${myList[i].totalSKS}');
      }
    }
  }
}
