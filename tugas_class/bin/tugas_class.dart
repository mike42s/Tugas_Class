import 'Jenis.dart';
import 'Mahasiswa.dart';
import 'Person.dart';
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
  List<Mahasiswa_s> myList = [];
  int counter_mylist = 0;
  String? coba_input;
  int exit = 0;
  int? menu;
  while (exit != 1) {
    stdout.write(
        "Login Sebagai? : \n1.Sebagai Mahasiswa\n2.Sebagai Pegawai\n3.Cek All\n4.Edit Data Mahasiswa\n");
    Input = stdin.readLineSync();
    menu = int.parse(Input!);
    if (menu == 1) {
      //kurang sistem login per mhs, buat menu untuk menunjukan IPS,IPK ,mengambil SKS minimal 2 sks
      stdout.write("Mahasiswa \n");
      stdout.write("1.Login\n2.Daftar\n");
      int? menu5;
      Input = stdin.readLineSync();
      menu5 = int.parse(Input!);
      if (menu5 == 1) {
        if (myList.length >= 1) {
          stdout.write("Login\n");
          List<Person> myList2 = [];
          stdout.write("Input Nama : ");
          String? Nama = stdin.readLineSync(); //Nama
          stdout.write("\nUsia : ");
          coba_input = stdin.readLineSync();
          int? Usia = int.parse(coba_input!);
          myList2.add(Person(Nama, Usia));
          int temp_counter = 0;
          for (int i = 0; i < myList.length; i++) {
            if (myList[i].nama == myList2[0].nama &&
                myList[i].usia == myList2[0].usia) {
              temp_counter = i;
            }
          }

          if (temp_counter != null) {
            stdout.write("Hasil yang ditemukan : \n");
            print(
                'Nama ${myList[temp_counter].nama} - Usia : ${myList[temp_counter].usia} - SKS : ${myList[temp_counter].SKS} -Mahasiswa Aktif : ${myList[temp_counter].Status} - IPS : ${myList[temp_counter].IPS} - IPK : ${myList[temp_counter].IPK} - Total SKS : ${myList[temp_counter].totalSKS}');
          } else {
            print('Data Tidak ditemukan');
          }
          print('------------');
          int? menu4 = 0;
          while (menu4 != 5) {
            stdout.write(
                "Data apa yang ingin dirubah?\n1.Input IPS\n2.Input SKS\n3.Lihat IPK\n4.Status Cuti Mahasiswa.\n5.Lihat Jumlah SKS yang diambil\n6.Exit\n");
            coba_input = stdin.readLineSync();
            menu4 = int.parse(coba_input!); //menu4
            if (menu4 == 1) {
              stdout.write("Input IPS\n");
              coba_input = stdin.readLineSync();
              double? Input_Data = double.parse(coba_input!);
              myList[temp_counter].setIPS(Input_Data);
              stdout.write("Data has Change\n");
              print(
                  'Last Edit : Nama ${myList[temp_counter].nama}- Usia : ${myList[temp_counter].usia}- SKS : ${myList[temp_counter].SKS} -Mahasiswa Aktif : ${myList[temp_counter].Status} - IPS : ${myList[temp_counter].IPS} - IPK : ${myList[temp_counter].IPK} - Total SKS : ${myList[temp_counter].totalSKS}');
            } else if (menu4 == 2) {
              int? Input_Datas = 1;
              do {
                stdout.write("Input SKS\nMinimal SKS 2 hingga 24 SKS : ");
                coba_input = stdin.readLineSync();
                Input_Datas = int.parse(coba_input!);
              } while (Input_Datas < 2 || Input_Datas >= 24);
              myList[temp_counter].PerhitunganTotalSKS(Input_Datas);
              print(
                  'Last Edit : Nama ${myList[temp_counter].nama}- Usia : ${myList[temp_counter].usia}- SKS : ${myList[temp_counter].SKS} -Mahasiswa Aktif : ${myList[temp_counter].Status} - IPS : ${myList[temp_counter].IPS} - IPK : ${myList[temp_counter].IPK} - Total SKS : ${myList[temp_counter].totalSKS}');
            } else if (menu4 == 3) {
              print('${myList[temp_counter].IPK}');
              print(
                  'Last Edit : Nama ${myList[temp_counter].nama}- Usia : ${myList[temp_counter].usia}- SKS : ${myList[temp_counter].SKS} - Mahasiswa Aktif : ${myList[temp_counter].Status} - IPS : ${myList[temp_counter].IPS} - IPK : ${myList[temp_counter].IPK} - Total SKS : ${myList[temp_counter].totalSKS}');
            } else if (menu4 == 4) {
              stdout.write(
                  "Untuk Aktif Jawab 1 atau untuk Tidak Aktif Jawab 2 : ");
              coba_input = stdin.readLineSync();
              int? temp = int.parse(coba_input!); //menu4
              if (temp == 1) {
                myList[temp_counter].Status = true;
              } else if (temp == 2) {
                myList[temp_counter].Status = false;
              } else {
                break;
              }
              print(
                  'Last Edit : Nama ${myList[temp_counter].nama}- Usia : ${myList[temp_counter].usia}- SKS : ${myList[temp_counter].SKS} -Mahasiswa Aktif : ${myList[temp_counter].Status} - IPS : ${myList[temp_counter].IPS} - IPK : ${myList[temp_counter].IPK} - Total SKS : ${myList[temp_counter].totalSKS}');
            } else if (menu4 == 5) {
              print('${myList[temp_counter].totalSKS}');
              print(
                  'Last Edit : Nama ${myList[temp_counter].nama}- Usia : ${myList[temp_counter].usia}- SKS : ${myList[temp_counter].SKS} - Mahasiswa Aktif : ${myList[temp_counter].Status} - IPS : ${myList[temp_counter].IPS} - IPK : ${myList[temp_counter].IPK} - Total SKS : ${myList[temp_counter].totalSKS}');
            } else if (menu4 == 6) {
              break;
            }
          }
        } else {
          print('Data Kosong');
        }
      } else if (menu5 == 2) {
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
      } else {
        break;
      }
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
    } else if (menu == 4) {
      for (int i = 0; i < myList.length; i++) {
        print(
            '${i + 1}. Nama ${myList[i].nama} - Usia : ${myList[i].usia} - SKS : ${myList[i].SKS} -Mahasiswa Aktif : ${myList[i].Status} - IPS : ${myList[i].IPS} - IPK : ${myList[i].IPK} - Total SKS : ${myList[i].totalSKS}');
      }
      stdout.write("Edit Data Mahasiswa Ke - ");
      coba_input = stdin.readLineSync();
      int? counter_mhs = int.parse(coba_input!) - 1; //counter_mhs
      print(
          'Apakah Benar Data Mahasiswa ini?. Nama ${myList[counter_mhs].nama}- Usia : ${myList[counter_mhs].usia}- SKS : ${myList[counter_mhs].SKS} -Mahasiswa Aktif : ${myList[counter_mhs].Status} - IPS : ${myList[counter_mhs].IPS} - IPK : ${myList[counter_mhs].IPK} - Total SKS : ${myList[counter_mhs].totalSKS}');
    }
  }
}
