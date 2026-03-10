import 'dart:io';

void main() {
  //set awal
  Set<String> dataSet = {'a', 'b', 'c', 'd', 'e'};
  print('\nSemua Data');
  int no = 1;
  for (String data in dataSet) {
    print('$no. $data');
    no++;
  }
  print('Jumlah data: ${dataSet.length}');
  //tambah data baru
  stdout.write('\nMasukkan data baru: ');
  String newData = stdin.readLineSync()!;

  if (dataSet.contains(newData)) {
    print('Data sudah ada');
  } else {
    dataSet.add(newData);
    print('Data berhasil ditambahkan');
  }

  //hapus data
  stdout.write('\nMasukkan data yang ingin dihapus: ');
  String deleteData = stdin.readLineSync()!;

  if (dataSet.contains(deleteData)) {
    dataSet.remove(deleteData);
    print('Data berhasil dihapus');
  } else {
    print('Data tidak ditemukan');
  }

  //cek data
  stdout.write('\nMasukkan data yang ingin dicari: ');
  String searchData = stdin.readLineSync()!;

  if (dataSet.contains(searchData)) {
    print('Data ditemukan');
  } else {
    print('Data tidak ditemukan');
  }
  //tampilkan hasil akhir
  print('\nHasil akhir');
  no = 1;
  for (String data in dataSet) {
    print('$no. $data');
    no++;
  }
  print('Jumlah data: ${dataSet.length}');
}
