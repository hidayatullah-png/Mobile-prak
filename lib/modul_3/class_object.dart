import 'dart:io';

class Mahasiswa {
  String? nama;
  int? nim;
  String? jurusan;

  void tampilkanInfo() {
    print("Nama: ${nama ?? 'Tidak ada'}");
    print("NIM: ${nim ?? 'Belum diisi'}");
    print("Jurusan: ${jurusan ?? 'Belum diisi'}");
  }
}

// EXTENDS

class MahasiswaAktif extends Mahasiswa {
  String? semester;
  @override
  void tampilkanInfo() {
    super.tampilkanInfo();
    print("Semester: ${semester ?? 'Belum diisi'}");
  }
}

class MahasiswaAlumni extends Mahasiswa {
  int? tahunLulus;

  @override
  void tampilkanInfo() {
    super.tampilkanInfo();
    print("Tahun Lulus: ${tahunLulus ?? 'Belum diisi'}");
  }
}

//mixin
mixin BisaMengajar{
  void mengajar(){
    print("Sedang mengajar...");
  }
}
mixin BisaMeneliti{
  void meneliti(){
    print("Sedang melakukan penelitian");
  }
}
mixin BisaAdministrasi{
  void administrasi(){
    print("Sedang melakukan administrasi");
  }
}

//class Dosen dengan mixin
class Dosen with BisaMengajar, BisaMeneliti{}
class Fakultas with BisaAdministrasi{}

//MAIN
void main() {
  print("Pilih tipe mahasiswa:");
  print("1. Mahasiswa Aktif");
  print("2. Mahasiswa Alumni");
  String? pilihan = stdin.readLineSync();

  if(pilihan == '1') {
    MahasiswaAktif mahasiswa = MahasiswaAktif();
    
    print("Masukkan nama mahasiswa:");
    mahasiswa.nama = stdin.readLineSync();

    print("Masukkan NIM mahasiswa:");
    mahasiswa.nim = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan jurusan mahasiswa:");
    mahasiswa.jurusan = stdin.readLineSync();

    print("Masukkan semester:");
    mahasiswa.semester = stdin.readLineSync();

    print("\n=== DATA MAHASISWA AKTIF ===");
    mahasiswa.tampilkanInfo();
  } else if(pilihan == '2') {
    MahasiswaAlumni mahasiswa = MahasiswaAlumni();
    
    print("Masukkan nama mahasiswa:");
    mahasiswa.nama = stdin.readLineSync();

    print("Masukkan NIM mahasiswa:");
    mahasiswa.nim = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan jurusan mahasiswa:");
    mahasiswa.jurusan = stdin.readLineSync();

    print("Masukkan tahun lulus:");
    mahasiswa.tahunLulus = int.tryParse(stdin.readLineSync() ?? '');

    print("\n=== DATA MAHASISWA ALUMNI ===");
    mahasiswa.tampilkanInfo();
  } else {
    print("Pilihan tidak valid.");
  }
  print("\n==dosen dengan mixin==");
  Dosen dosen = Dosen();
  dosen.mengajar();
  dosen.meneliti();
  Fakultas fakultas = Fakultas();
  fakultas.administrasi();

}