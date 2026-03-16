import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testflut/features/mahasiswa/data/models/mahasiswa_model.dart';
import 'package:testflut/features/mahasiswa/data/repositories/mahasiswa_repository.dart';

// Repository Provider
final mahasiswaRepositoryProvider = Provider<MahasiswaRepository>((ref) {
  return MahasiswaRepository();
});

// StateNotifier untuk mengelola state mahasiswa (agar bisa di-refresh)
class MahasiswaNotifier extends StateNotifier<AsyncValue<List<MahasiswaModel>>> {
  final MahasiswaRepository _repository;

  MahasiswaNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadMahasiswaList();
  }

  /// Load data mahasiswa dari API
  Future<void> loadMahasiswaList() async {
    state = const AsyncValue.loading();
    try {
      final data = await _repository.getAllMahasiswa();
      state = AsyncValue.data(data);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  /// Fungsi untuk Refresh halaman
  Future<void> refresh() async {
    await loadMahasiswaList();
  }
}

// Mahasiswa Notifier Provider (Digunakan di UI MahasiswaPage)
final mahasiswaNotifierProvider =
    StateNotifierProvider.autoDispose<
        MahasiswaNotifier,
        AsyncValue<List<MahasiswaModel>>
    >((ref) {
  final repository = ref.watch(mahasiswaRepositoryProvider);
  return MahasiswaNotifier(repository);
});