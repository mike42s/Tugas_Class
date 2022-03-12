import 'Jenis.dart';
import 'Mahasiswa.dart';
import 'Pegawai.dart';
import 'Person.dart';
import 'staf.dart';
import 'tugas.dart';
import 'Dosen.dart';
import 'dart:io';

//Dosen tgl lihat jumlah sks, sistem login, penghasilan sama perhtiungan dpet brapa
//staf blom
void main(List<String> arguments) {
  // var sm1 = Mahasiswa_s("Siapapun", 20, 5, true, 3.0, 3.5, 50);
  // print(
  //     'Nama ${sm1.nama} - Usia : ${sm1.usia} - Status : ${sm1.Status} - IPS : ${sm1.IPS} - IPK : ${sm1.IPK} - Total SKS : ${sm1.totalSKS}');
  // sm1.target();
  // print('--');
  // var sm2 = Dosen_LB("c", 30, 1000, 2000, 10000, 50);
  // sm2.penghasilan_bulanan();
  // print(
  //     'Nama ${sm2.nama} - Usia : ${sm2.usia} - Gaji : ${sm2.Gaji} - Jumlah SKS : ${sm2.jumlah_sks} - Penghasilan : ${sm2.penghasilan}- Tambahan Gaji : ${sm2.TambahanGaji}');
  // print('--');

  // var sm3 = Dosen_2("x", 20, 1000, 1000, 0, 3000, 50);
  // sm3.penghasilan_bulanan();
  // print(
  //     'Nama ${sm3.nama} - Usia : ${sm3.usia} - Gaji : ${sm3.Gaji} - Tambahan Gaji : ${sm3.TambahanGaji}- Penghasilan : ${sm3.penghasilan} - Tunjangan Kehadiran : ${sm3.tunjangankehadiran} - Jumlah SKS : ${sm3.jumlah_sks} ');
  // print('--');
  // var sm4 = Dosen_3("z", 10, 1, 2, 3, 4, 10);
  // sm4.penghasilan_bulanan();
  // print(
  //     'Nama ${sm4.nama} - Usia : ${sm4.usia} - Gaji : ${sm4.Gaji} - Tambahan Gaji : ${sm4.TambahanGaji}- Penghasilan : ${sm4.penghasilan} - Tunjangan Kehadiran : ${sm4.tunjangankehadiran} - Jumlah SKS : ${sm4.jumlah_sks} ');
  // print('--');
  // var sm5 = Staf_1("b", 12, 1000, 1000, 12, true, 0, 200);
  // sm5.penghasilan_bulanan();
  // print(
  //     'Nama ${sm5.nama} - Usia : ${sm5.usia} - Gaji : ${sm5.Gaji}- Penghasilan : ${sm5.penghasilan} - Cuti : ${sm5.cuti} - Absensi : ${sm5.absensi} - Jumlah Absensi : ${sm5.jumlah_absensi} - Tunjangan Kehadiran : ${sm5.tunjangankehadiran}');
  // print('--');
  // sm5.absensi_perhitungan(true, 4000);
  // sm5.pengajuan_cuti(true);
  String? Input;
  List<Mahasiswa_s> myList = [];
  List<Staf> myListDosen = [];
  int counter_myListDosen = 0;
  int counter_mylist = 0;
  String? coba_input;
  int exit = 0;
  int? menu;

  List<Dosen_Tamu> myListDosenTamu = [];
  int counter_myListDosenTamu = 0;
  List<Dosen_LB> myListDosenLB = [];
  int counter_myListDosenLB = 0;
  List<Dosen_Tetap> myListDosenTetap = [];
  int counter_myListDosenTetap = 0;
  while (exit != 1) {
    stdout.write(
        "Login Sebagai? : \n1.Sebagai Mahasiswa\n2.Sebagai Pegawai\n3.Cek All\n4.Edit Data Mahasiswa\n");
    Input = stdin.readLineSync();
    menu = int.parse(Input!);
    if (menu == 1) {
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
            //pakai buat sistem edit dan login
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
          "Login Sebagai Pegawai? : \n1.Sebagai Dosen\n2.Sebagai Staf\n3.Daftar\n");
      int? menu2;
      Input = stdin.readLineSync();
      menu2 = int.parse(Input!);
      if (menu2 == 1) {
        stdout.write("Login Sebagai Dosen");
        List<Person> myList3 = [];
        stdout.write("Input Nama : ");
        String? Nama = stdin.readLineSync(); //Nama
        stdout.write("Usia : ");
        coba_input = stdin.readLineSync();
        int? Usia = int.parse(coba_input!);
        myList3.add(Person(Nama, Usia));
        int? temp_counter1 = null;
        int? temp_counter2 = null;
        int? temp_counter3 = null;
        for (int i = 0; i < counter_myListDosenTamu; i++) {
          if (myListDosenTamu[i].nama == myList3[0].nama &&
              myListDosenTamu[i].usia == myList3[0].usia) {
            temp_counter1 = i;
          }
        }
        for (int i = 0; i < counter_myListDosenLB; i++) {
          if (myListDosenLB[i].nama == myList3[0].nama &&
              myListDosenLB[i].usia == myList3[0].usia) {
            temp_counter2 = i;
          }
        }
        for (int i = 0; i < counter_myListDosenTetap; i++) {
          if (myListDosenTetap[i].nama == myList3[0].nama &&
              myListDosenTetap[i].usia == myList3[0].usia) {
            temp_counter3 = i;
          }
        }
        if (temp_counter1 != null && temp_counter1 >= 0) {
          stdout.write("Hasil yang ditemukan : \n Dosen Tamu : \n");
          print(
              'Nama ${myListDosenTamu[temp_counter1].nama} - Usia : ${myListDosenTamu[temp_counter1].usia} - Gaji : ${myListDosenTamu[temp_counter1].Gaji} - Tambahan Gaji : ${myListDosenTamu[temp_counter1].TambahanGaji}- Penghasilan : ${myListDosenTamu[temp_counter1].penghasilan} - Tunjangan Kehadiran : ${myListDosenTamu[temp_counter1].tunjangankehadiran} - Jumlah SKS : ${myListDosenTamu[temp_counter1].jumlah_sks} ');
        } else if (temp_counter2 != null && temp_counter2 >= 0) {
          stdout.write("Hasil yang ditemukan : \n Dosen LB : \n");
          print(
              'Nama ${myListDosenLB[temp_counter2].nama} - Usia : ${myListDosenLB[temp_counter2].usia} - Gaji : ${myListDosenLB[temp_counter2].Gaji} - Jumlah SKS : ${myListDosenLB[temp_counter2].jumlah_sks} - Penghasilan : ${myListDosenLB[temp_counter2].penghasilan}- Tambahan Gaji : ${myListDosenLB[temp_counter2].TambahanGaji}');
        } else if (temp_counter3 != null && temp_counter3 >= 0) {
          stdout.write("Hasil yang ditemukan : \n Dosen Tetap : \n");
          print(
              'Nama ${myListDosenTetap[temp_counter3].nama} - Usia : ${myListDosenTetap[temp_counter3].usia} - Gaji : ${myListDosenTetap[temp_counter3].Gaji} - Tambahan Gaji : ${myListDosenTetap[temp_counter3].TambahanGaji}- Penghasilan : ${myListDosenTetap[temp_counter3].penghasilan} - Tunjangan Kehadiran : ${myListDosenTetap[temp_counter3].tunjangankehadiran} - Jumlah SKS : ${myListDosenTetap[temp_counter3].jumlah_sks} ');
        } else {
          print('Data Tidak ditemukan');
        }
        print('------------');
        // int? menu6 = -1;
        // while (menu6 != 5) {
        //
        // }
      } else if (menu2 == 2) {
        stdout.write("Login Sebagai Staf\n");
        List<Person> myList3 = [];
        stdout.write("Input Nama : ");
        String? Nama = stdin.readLineSync(); //Nama
        stdout.write("Usia : ");
        coba_input = stdin.readLineSync();
        int? Usia = int.parse(coba_input!);
        myList3.add(Person(Nama, Usia));
        int? temp_counter1 = null;
        for (int i = 0; i < counter_myListDosen; i++) {
          if (myListDosen[i].nama == myList3[0].nama &&
              myListDosen[i].usia == myList3[0].usia) {
            temp_counter1 = i;
          }
        }
        if (temp_counter1 != null && temp_counter1 >= -1) {
          print(
              'Nama ${myListDosen[temp_counter1!].nama} - Usia : ${myListDosen[temp_counter1].usia} - Gaji : ${myListDosen[temp_counter1].Gaji}- Penghasilan : ${myListDosen[temp_counter1].penghasilan} - Cuti : ${myListDosen[temp_counter1].cuti} - Absensi : ${myListDosen[temp_counter1].absensi} - Jumlah Absensi : ${myListDosen[temp_counter1].jumlah_absensi} - Tunjangan Kehadiran : ${myListDosen[temp_counter1].tunjangankehadiran}');
          myListDosen[temp_counter1].jumlah_absensi =
              myListDosen[temp_counter1].jumlah_absensi! + 1;

          int? menu6 = -1;
          do {
            stdout.write("1. Pengajuan Cuti\n2.Total Gaji\n");
            coba_input = stdin.readLineSync();
            menu6 = int.parse(coba_input!);
            if (menu6 == 1) {
              print('Pengajuan Cuti : \n');
              myListDosen[temp_counter1].pengajuan_cuti(true);
            } else if (menu6 == 2) {
              myListDosen[temp_counter1].absensi_perhitungan(true);
            }
          } while (menu6 != 5);
        }
      } else if (menu2 == 3) {
        stdout.write("Daftar sebagai? 1.Staf, 2.Dosen : ");
        int? choice;
        Input = stdin.readLineSync();
        choice = int.parse(Input!);
        if (choice == 1) {
          stdout.write("Daftar sebagai Staf\n");
          stdout.write("Nama : ");
          String? Nama = stdin.readLineSync(); //Nama
          stdout.write("\nUsia : ");
          coba_input = stdin.readLineSync();
          int? Usia = int.parse(coba_input!); //Usia
          stdout.write("\nGaji : ");
          coba_input = stdin.readLineSync();
          int? Gaji = int.parse(coba_input!); //Gaji

          stdout.write("\npenghasilan : ");
          coba_input = stdin.readLineSync();
          int? penghasilan = int.parse(coba_input!); //penghasilan

          stdout.write("\ncuti : ");
          coba_input = stdin.readLineSync();
          int? cuti = int.parse(coba_input!); //cuti
          stdout.write("\nAbsensi? \nTrue = 1, False = 2 : ");
          coba_input = stdin.readLineSync();
          int? absensi = int.parse(coba_input!); //absensi

          stdout.write("\njumlah_absensi : ");
          coba_input = stdin.readLineSync();
          int? jumlah_absensi = int.parse(coba_input!); //jumlah_absensi
          stdout.write("\ntunjangankehadiran : ");
          coba_input = stdin.readLineSync();
          int? tunjangankehadiran = int.parse(coba_input!); //tunjangankehadiran

          bool? Status_If;
          if (absensi == 1) {
            Status_If = true;
          } else {
            Status_If = false;
          }
          stdout.write("\n");
          myListDosen.add(Staf(Nama, Usia, Gaji, penghasilan, cuti, Status_If,
              jumlah_absensi, tunjangankehadiran));
          counter_myListDosen++;
        } else if (choice == 2) {
          stdout.write(
              "Daftar sebagai Dosen\n1. Dosen Tamu\n2.Dosen LB\n3.Dosen Tetap\n");
          int? dosen;
          Input = stdin.readLineSync();
          dosen = int.parse(Input!);
          if (dosen == 1) {
            stdout.write("Daftar Sebagai Dosen Tamu\n");
            String? coba_input;
            stdout.write("Nama : ");
            String? Nama = stdin.readLineSync(); //Nama
            stdout.write("\nUsia : ");
            coba_input = stdin.readLineSync();
            int? Usia = int.parse(coba_input!); //Usia
            stdout.write("\Gaji : ");
            coba_input = stdin.readLineSync();
            int? Gaji = int.parse(coba_input!); //Gaji
            stdout.write("\npenghasilan : ");
            coba_input = stdin.readLineSync();
            int? penghasilan = int.parse(coba_input!); //penghasilan

            stdout.write("\njumlahsks : ");
            coba_input = stdin.readLineSync();
            int? jumlahsks = int.parse(coba_input!); //jumlahsks
            stdout.write("\nTambahanGaji : ");
            coba_input = stdin.readLineSync();
            int? TambahanGaji = int.parse(coba_input!); //TambahanGaji
            stdout.write("\ntunjangankehadiran : ");
            coba_input = stdin.readLineSync();
            int? tunjangankehadiran =
                int.parse(coba_input!); //tunjangankehadiran

            myListDosenTamu.add(Dosen_Tamu(Nama, Usia, Gaji, TambahanGaji,
                penghasilan, tunjangankehadiran, jumlahsks));
            //Print
            print(
                'Nama ${myListDosenTamu[counter_myListDosenTamu].nama} - Usia : ${myListDosenTamu[counter_myListDosenTamu].usia} - Gaji : ${myListDosenTamu[counter_myListDosenTamu].Gaji} - Tambahan Gaji : ${myListDosenTamu[counter_myListDosenTamu].TambahanGaji}- Penghasilan : ${myListDosenTamu[counter_myListDosenTamu].penghasilan} - Tunjangan Kehadiran : ${myListDosenTamu[counter_myListDosenTamu].tunjangankehadiran} - Jumlah SKS : ${myListDosenTamu[counter_myListDosenTamu].jumlah_sks} ');

            counter_myListDosenTamu++;
          } else if (dosen == 2) {
            stdout.write("Daftar Sebagai Dosen LB\n");
            String? coba_input;
            stdout.write("Nama : ");
            String? Nama = stdin.readLineSync(); //Nama
            stdout.write("\nUsia : ");
            coba_input = stdin.readLineSync();
            int? Usia = int.parse(coba_input!); //Usia
            stdout.write("\Gaji : ");
            coba_input = stdin.readLineSync();
            int? Gaji = int.parse(coba_input!); //Gaji
            stdout.write("\penghasilan : ");
            coba_input = stdin.readLineSync();
            int? penghasilan = int.parse(coba_input!); //penghasilan

            stdout.write("\jumlahsks : ");
            coba_input = stdin.readLineSync();
            int? jumlahsks = int.parse(coba_input!); //jumlahsks
            stdout.write("\TambahanGaji : ");
            coba_input = stdin.readLineSync();
            int? TambahanGaji = int.parse(coba_input!); //TambahanGaji
            myListDosenLB.add(Dosen_LB(
                Nama, Usia, Gaji, penghasilan, TambahanGaji, jumlahsks));
            print(
                'Nama ${myListDosenLB[counter_myListDosenLB].nama} - Usia : ${myListDosenLB[counter_myListDosenLB].usia} - Gaji : ${myListDosenLB[counter_myListDosenLB].Gaji} - Jumlah SKS : ${myListDosenLB[counter_myListDosenLB].jumlah_sks} - Penghasilan : ${myListDosenLB[counter_myListDosenLB].penghasilan}- Tambahan Gaji : ${myListDosenLB[counter_myListDosenLB].TambahanGaji}');
            counter_myListDosenLB++;
          } else if (dosen == 3) {
            stdout.write("Daftar Sebagai Dosen Tetap\n");
            String? coba_input;
            stdout.write("Nama : ");
            String? Nama = stdin.readLineSync(); //Nama
            stdout.write("\nUsia : ");
            coba_input = stdin.readLineSync();
            int? Usia = int.parse(coba_input!); //Usia
            stdout.write("\Gaji : ");
            coba_input = stdin.readLineSync();
            int? Gaji = int.parse(coba_input!); //Gaji
            stdout.write("\penghasilan : ");
            coba_input = stdin.readLineSync();
            int? penghasilan = int.parse(coba_input!); //penghasilan
            stdout.write("\njumlahsks : ");
            coba_input = stdin.readLineSync();
            int? jumlahsks = int.parse(coba_input!); //jumlahsks
            stdout.write("\nTambahanGaji : ");
            coba_input = stdin.readLineSync();
            int? TambahanGaji = int.parse(coba_input!); //TambahanGaji
            stdout.write("\ntunjangankehadiran : ");
            coba_input = stdin.readLineSync();
            int? tunjangankehadiran =
                int.parse(coba_input!); //tunjangankehadiran
            myListDosenTetap.add(Dosen_Tetap(Nama, Usia, Gaji, TambahanGaji,
                penghasilan, tunjangankehadiran, jumlahsks));
            print(
                'Nama ${myListDosenTetap[counter_myListDosenTetap].nama} - Usia : ${myListDosenTetap[counter_myListDosenTetap].usia} - Gaji : ${myListDosenTetap[counter_myListDosenTetap].Gaji} - Tambahan Gaji : ${myListDosenTetap[counter_myListDosenTetap].TambahanGaji}- Penghasilan : ${myListDosenTetap[counter_myListDosenTetap].penghasilan} - Tunjangan Kehadiran : ${myListDosenTetap[counter_myListDosenTetap].tunjangankehadiran} - Jumlah SKS : ${myListDosenTetap[counter_myListDosenTetap].jumlah_sks} ');
            counter_myListDosenTetap++;
          } else {
            break;
          }
        } else {
          break;
        }
      } else {
        break;
      }
    } else if (menu == 3) {
      //Mahasiswa
      for (int i = 0; i < myList.length; i++) {
        print(
            'Nama ${myList[i].nama} - Usia : ${myList[i].usia} - SKS : ${myList[i].SKS} -Mahasiswa Aktif : ${myList[i].Status} - IPS : ${myList[i].IPS} - IPK : ${myList[i].IPK} - Total SKS : ${myList[i].totalSKS}');
      }
      //Staf
      for (int i = 0; i < counter_myListDosen; i++) {
        print(
            'Nama ${myListDosen[i].nama} - Usia : ${myListDosen[i].usia} - Gaji : ${myListDosen[i].Gaji}- Penghasilan : ${myListDosen[i].penghasilan} - Cuti : ${myListDosen[i].cuti} - Absensi : ${myListDosen[i].absensi} - Jumlah Absensi : ${myListDosen[i].jumlah_absensi} - Tunjangan Kehadiran : ${myListDosen[i].tunjangankehadiran}');
      }
      //Dosen Tamu
      for (int i = 0; i < counter_myListDosenTamu; i++) {
        print(
            'Nama ${myListDosenTamu[i].nama} - Usia : ${myListDosenTamu[i].usia} - Gaji : ${myListDosenTamu[i].Gaji} - Tambahan Gaji : ${myListDosenTamu[i].TambahanGaji}- Penghasilan : ${myListDosenTamu[i].penghasilan} - Tunjangan Kehadiran : ${myListDosenTamu[i].tunjangankehadiran} - Jumlah SKS : ${myListDosenTamu[i].jumlah_sks} ');
      }
      //Dosen tetap**
      for (int i = 0; i < counter_myListDosenTetap; i++) {
        print(
            'Nama ${myListDosenTetap[i].nama} - Usia : ${myListDosenTetap[i].usia} - Gaji : ${myListDosenTetap[i].Gaji} - Tambahan Gaji : ${myListDosenTetap[i].TambahanGaji}- Penghasilan : ${myListDosenTetap[i].penghasilan} - Tunjangan Kehadiran : ${myListDosenTetap[i].tunjangankehadiran} - Jumlah SKS : ${myListDosenTetap[i].jumlah_sks} ');
      }
      //Dosen LB**
      for (int i = 0; i < counter_myListDosenLB; i++) {
        print(
            'Nama ${myListDosenLB[i].nama} - Usia : ${myListDosenLB[i].usia} - Gaji : ${myListDosenLB[i].Gaji} - Jumlah SKS : ${myListDosenLB[i].jumlah_sks} - Penghasilan : ${myListDosenLB[i].penghasilan}- Tambahan Gaji : ${myListDosenLB[i].TambahanGaji}');
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
