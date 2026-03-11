import '../models/mahasiswa_model.dart';

class MahasiswaRepository {
  Future<List<MahasiswaModel>> getAllMahasiswa() async {
    await Future.delayed(const Duration(milliseconds: 800)); // Simulasi loading

    return [
      MahasiswaModel(nama: 'Mikan Tsumuki', nim: '100526', jurusan: 'Keperawatan', email: 'caelus467904@gmail.com'),
      MahasiswaModel(nama: 'Kazuichi Soda', nim: '100618', jurusan: 'Teknik Mesin', email: 'kalos618@gmail.com', isAktif: true),
      MahasiswaModel(nama: 'Akane Owari', nim: '100720', jurusan: 'Pendidikan Olahraga', email: 'skemma720@gmail.com', isAktif: true),
      MahasiswaModel(nama: 'Nagito Komaeda', nim: '100216', jurusan: 'Ilmu Komunikasi', email: 'epieikeia216@gmail.com'),
      MahasiswaModel(nama: 'Chiaki Nanami', nim: '100514', jurusan: 'Teknik Informatika', email: 'hubris504@gmail.com'),
      MahasiswaModel(nama: 'Teruteru Hanamura', nim: '100945', jurusan: 'Tata Boga', email: 'orexis945@gmail.com'),
      MahasiswaModel(nama: 'Gundham Tanaka', nim: '100093', jurusan: 'Veteriner', email: 'philia093@gmail.com'),
      MahasiswaModel(nama: 'Hajime Hinata', nim: '100252', jurusan: 'Ilmu Politik', email: 'eleos252@gmail.com', isAktif: true),
      MahasiswaModel(nama: 'Hiyoko Saionji', nim: '100432', jurusan: 'Seni tari dan musik', email: 'aporia432@gmail.com'),
      MahasiswaModel(nama: 'Ibuki Mioda', nim: '100600', jurusan: 'Seni Musik', email: 'polemos600@gmail.com'),
      MahasiswaModel(nama: 'Mahiru Koizumi', nim: '100496', jurusan: 'Fotografi', email: 'neikos496@gmail.com'),
      MahasiswaModel(nama: 'Sonia Nevermind', nim: '100405', jurusan: 'Hubungan Internasional', email: 'haplotes405@gmail.com', isAktif: true),
      MahasiswaModel(nama: 'Fuyuhiko Kuzuryu', nim: '100365', jurusan: 'Hukum', email: 'skopeo365@gmail.com', isAktif: true),
      MahasiswaModel(nama: 'Peko Pekoyama', nim: '100477', jurusan: 'Ilmu Administrasi', email: 'peko77@gmail.com'),
    ];
  }

  Future<List<MahasiswaModel>> getMahasiswaAktif() async {
    final allData = await getAllMahasiswa();
    return allData.where((mhs) => mhs.isAktif).toList();
  }
}