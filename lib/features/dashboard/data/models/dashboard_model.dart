/// Model statistik di dashboard
class DashboardStats {
  final String title;
  final String value;
  final String subtitle;
  final double percentage; // AKTIF: Tanda // dihapus
  final bool isIncrease;   // AKTIF: Tanda // dihapus

  DashboardStats({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.percentage, // AKTIF: Tanda // dihapus
    required this.isIncrease, // AKTIF: Tanda // dihapus
  });

  factory DashboardStats.fromJson(Map<String, dynamic> json) {
    return DashboardStats(
      title: json['title'] ?? '',
      value: json['value'] ?? '0',
      subtitle: json['subtitle'] ?? '',
      percentage: (json['percentage'] ?? 0).toDouble(), // AKTIF: Tanda // dihapus
      isIncrease: json['isIncrease'] ?? true,           // AKTIF: Tanda // dihapus
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'value': value,
      'subtitle': subtitle,
      'percentage': percentage, // AKTIF: Tanda // dihapus
      'isIncrease': isIncrease, // AKTIF: Tanda // dihapus
    };
  }
}

/// Model data dashboard
class DashboardData {
  final List<DashboardStats> stats;
  final String userName;
  final DateTime lastUpdate;

  DashboardData({
    required this.stats,
    required this.userName,
    required this.lastUpdate,
  });

  factory DashboardData.fromJson(Map<String, dynamic> json) {
    return DashboardData(
      stats: (json['stats'] as List?)
              ?.map((e) => DashboardStats.fromJson(e))
              .toList() ?? 
          [],
      userName: json['userName'] ?? 'User',
      lastUpdate: DateTime.parse(
        json['lastUpdate'] ?? DateTime.now().toString(),
      ),
    ); 
  }

  Map<String, dynamic> toJson() {
    return {
      'stats': stats.map((e) => e.toJson()).toList(),
      'userName': userName,
      'lastUpdate': lastUpdate.toIso8601String(),
    };
  }

  DashboardData copyWith({
    List<DashboardStats>? stats,
    String? userName,
    DateTime? lastUpdate,
  }) {
    return DashboardData(
      stats: stats ?? this.stats,
      userName: userName ?? this.userName,
      lastUpdate: lastUpdate ?? this.lastUpdate,
    );
  }
}