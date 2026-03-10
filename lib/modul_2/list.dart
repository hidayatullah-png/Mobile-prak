import 'dart:io';

void main() {
  //Membuat list kosong
  List<String> dataList = [];
  print('List kosong: $dataList');

  //input jumlah data
  stdout.write('Masukkan jumlah data: ');
  int jumlahData = int.parse(stdin.readLineSync()!);

  //input data ke dalam list
  for (int i = 0; i < jumlahData; i++) {
    stdout.write('Masukkan data ke-${i + 1}: ');
    String data = stdin.readLineSync()!;
    dataList.add(data);
  }
  print('List data: $dataList');

  while (true) {
    print('\nMenu:');
    print('1. Tampilkan berdasarkan index tertentu');
    print('2. Ubah berdasarkan index tertentu');
    print('3. Hapus berdasarkan index tertentu');
    print('4. Tampilkan hasil akhir');
    print('5. Keluar');
    stdout.write('Pilih menu: ');

    String pilihan = stdin.readLineSync()!;
    if (pilihan == '1') {
      stdout.write('Masukkan index yang ingin ditampilkan: ');
      int index = int.parse(stdin.readLineSync()!);
      if (index >= 0 && index < dataList.length) {
        print('Data pada index $index: ${dataList[index]}');
      } else {
        print('Index tidak valid');
      }
    } else if (pilihan == '2') {
      stdout.write('Masukkan index yang ingin diubah: ');
      int index = int.parse(stdin.readLineSync()!);
      if (index >= 0 && index < dataList.length) {
        stdout.write('Masukkan data baru: ');
        String newData = stdin.readLineSync()!;
        dataList[index] = newData;
        print('Data pada index $index berhasil diubah');
      } else {
        print('Index tidak valid');
      }
    } else if (pilihan == '3') {
      stdout.write('Masukkan index yang ingin dihapus: ');
      int index = int.parse(stdin.readLineSync()!);
      if (index >= 0 && index < dataList.length) {
        dataList.removeAt(index);
        print('Data pada index $index berhasil dihapus');
      } else {
        print('Index tidak valid');
      }
    } else if (pilihan == '4') {
      print('\nHasil akhir');
      for (int i = 0; i < dataList.length; i++) {
        print('Index $i: ${dataList[i]}');
      }
    } else if (pilihan == '5') {
      break;
    } else {
      print('Pilihan tidak valid');
    }
  }
}
