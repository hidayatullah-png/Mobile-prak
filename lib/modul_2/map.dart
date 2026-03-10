import 'dart:io';

void main() {
  //Membuat map data awal
  Map<String, String> data = {
    'Nisa': '434241020',
    'Sukma': '434241087',
    'Zaski': '434241099',
  };
  print('Data: $data');
  //menambahkan data ke map
  data['Rizky'] = '434241012';
  print('\nData setelah ditambahkan: $data');
  //mengakses data berdasarkan key
  print('\nNomor NIM Nisa: ${data['Nisa']}');
  //mengubah data berdasarkan key
  data['Zaski'] = '434241097';
  print('\nData setelah diubah: $data');
  //menghapus data berdasarkan key
  data.remove('Sukma');
  print('\nData setelah dihapus: $data');

  //Mengecek apakah key tertentu ada dalam map
  stdout.write('\nMasukkan nama yang ingin dicek: ');
  String nama = stdin.readLineSync()!;
  if (data.containsKey(nama)) {
    print('$nama ada dalam map');
  } else {
    print('$nama tidak ada dalam map');
  }
  //Menghitung jumlah data dalam map
  print('\nJumlah data dalam map: ${data.length}');
  //Menampilkan semua data dalam map
  print('\nSemua data dalam map:');
  data.forEach((key, value) {
    print('$key: $value');
  });
  //input data mahasiswa

  print('\nInput data mahasiswa');
  stdout.write('Masukkan NIM: ');
  String nim = stdin.readLineSync()!;
  stdout.write('Masukkan nama: ');
  String namaMhs = stdin.readLineSync()!;
  stdout.write('Masukkan jurusan: ');
  String jurusan = stdin.readLineSync()!;
  stdout.write('Masukkan IPK: ');
  String ipk = stdin.readLineSync()!;
  Map<String, String> dataMhs = {
    'NIM': nim,
    'Nama': namaMhs,
    'Jurusan': jurusan,
    'IPK': ipk,
  };
  print('\nData mahasiswa: $dataMhs');
  //input multiple data mahasiswa
  stdout.write('\nMasukkan jumlah mahasiswa: ');
  int jumlahMhs = int.parse(stdin.readLineSync()!);

  List<Map<String, String>> listDataMhs = [];
  for (int i = 0; i < jumlahMhs; i++) {
    stdout.write('\nMasukkan NIM mahasiswa ke-${i + 1}: ');
    String nim = stdin.readLineSync()!;
    stdout.write('Masukkan nama mahasiswa ke-${i + 1}: ');
    String nama = stdin.readLineSync()!;
    stdout.write('Masukkan jurusan mahasiswa ke-${i + 1}: ');
    String jurusan = stdin.readLineSync()!;
    stdout.write('Masukkan IPK mahasiswa ke-${i + 1}: ');
    String ipk = stdin.readLineSync()!;
    Map<String, String> dataMhs = {
      'NIM': nim,
      'Nama': nama,
      'Jurusan': jurusan,
      'IPK': ipk,
    };
    listDataMhs.add(dataMhs);
  }
  print('\n=== DATA SEMUA MAHASISWA ===');
  for (var mhs in listDataMhs) {
    print(mhs);
  }
}
