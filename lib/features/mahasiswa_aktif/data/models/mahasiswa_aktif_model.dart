class MahasiswaAktifModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  MahasiswaAktifModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  // Fungsi untuk menerjemahkan JSON dari internet ke dalam Model
  factory MahasiswaAktifModel.fromJson(Map<String, dynamic> json) {
    return MahasiswaAktifModel(
      userId: json['userId'] ?? 0,
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      body: json['body'] ?? '',
    );
  }

  // Fungsi sebaliknya (opsional tapi disarankan untuk kelengkapan)
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}