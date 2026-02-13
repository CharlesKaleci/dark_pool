class NewsModel {
  final String id;
  final String content;       // Ekranda yazacak absürt haber metni
  final String channelName;   // Örn: @Borsakaplani, @WallStreetBeton
  final int accuracyRate;     // % cinsinden doğruluk payı (Örn: 90, 20)
  final double baseImpact;    // Cüzdana etki edecek taban para/yüzde

  NewsModel({
    required this.id,
    required this.content,
    required this.channelName,
    required this.accuracyRate,
    required this.baseImpact,
  });
}