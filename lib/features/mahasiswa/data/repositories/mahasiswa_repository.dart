import 'package:dio/dio.dart';
import '../models/mahasiswa_model.dart'; // Pastikan path import ini sudah benar

class MahasiswaRepository {
  // Inisialisasi library Dio
  final Dio _dio = Dio();

  // Mengambil daftar mahasiswa dari API internet
  Future<List<MahasiswaModel>> getAllMahasiswa() async {
    try {
      // 1. Memanggil API menggunakan Dio (tidak perlu Uri.parse)
      final response = await _dio.get('https://jsonplaceholder.typicode.com/comments');

      // 2. Dio otomatis menerjemahkan JSON menjadi List (tidak perlu jsonDecode)
      final List<dynamic> data = response.data;

      // 3. Mengubah data JSON mentah menjadi bentuk MahasiswaModel
      return data.map((json) => MahasiswaModel.fromJson(json)).toList();
    } catch (error) {
      // Jika terjadi error (misal: tidak ada internet), tampilkan pesan
      throw Exception('Gagal memuat data mahasiswa: $error');
    }
  }
}