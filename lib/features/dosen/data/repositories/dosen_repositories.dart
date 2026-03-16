// 1. Hapus import 'dart:convert' dan 'http'
import 'package:dio/dio.dart'; // Tambahkan import dio
import 'package:testflut/features/dosen/data/models/dosen_model.dart';

class DosenRepository {
  // 2. Buat objek Dio di dalam class
  final Dio _dio = Dio();

  // mendapatkan daftar dosen
  Future<List<DosenModel>> getDosenList() async {
    try {
      // 3. Gunakan _dio.get (Tidak perlu Uri.parse)
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/users',
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
      );

      // 4. response.data otomatis sudah berwujud List (TIDAK PERLU jsonDecode)
      final List<dynamic> data = response.data;
      
      print(data); // debug: tampilan data yang sudah diambil
      
      return data.map((json) => DosenModel.fromJson(json)).toList();
      
    } catch (error) {
      // 5. Dio otomatis masuk ke catch jika status code bukan 200 (misal 404 atau 500)
      print('Error: $error');
      throw Exception('Gagal memuat data dosen: $error');
    }
  }
}