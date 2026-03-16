import 'package:dio/dio.dart';
import '../models/mahasiswa_aktif_model.dart'; // Pastikan path import ini mengarah ke file model yang benar

class MahasiswaAktifRepository {
  // Inisialisasi Dio
  final Dio _dio = Dio();

  /// Fungsi untuk mengambil daftar Mahasiswa Aktif (Posts)
  Future<List<MahasiswaAktifModel>> getMahasiswaAktifList() async {
    try {
      // 1. Memanggil API menggunakan Dio
      final response = await _dio.get('https://jsonplaceholder.typicode.com/posts');

      // 2. Dio otomatis mengubah JSON JSON menjadi List (tidak perlu jsonDecode)
      final List<dynamic> data = response.data;

      // 3. Memetakan data mentah ke dalam bentuk MahasiswaAktifModel
      return data.map((json) => MahasiswaAktifModel.fromJson(json)).toList();
      
    } catch (error) {
      // Menangkap error jika terjadi kegagalan koneksi atau server
      throw Exception('Gagal memuat data mahasiswa aktif: $error');
    }
  }
}