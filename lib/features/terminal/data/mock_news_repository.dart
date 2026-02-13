import '../domain/news_model.dart';

class MockNewsRepository {
  List<NewsModel> getInitialNews() {
    return [
      NewsModel(
        id: '1',
        content: '"UzayX roketleri aslında dev birer sosis." - Elon Tusk',
        channelName: '@WallStreetBeton',
        accuracyRate: 50,
        baseImpact: 500.0,
      ),
      NewsModel(
        id: '2',
        content: 'LaleSoğanı A.Ş. metaverse tarlalarından rekor hasat bekliyor!',
        channelName: '@KriptoKahin',
        accuracyRate: 20,
        baseImpact: 1200.0,
      ),
      NewsModel(
        id: '3',
        content: 'Merkez Bankası başkanı yanlışlıkla fişi çekti, piyasalar kapalı.',
        channelName: '@Borsakaplani',
        accuracyRate: 90,
        baseImpact: 2500.0,
      ),
      NewsModel(
        id: '4',
        content: 'Bay X: "Bana güven, tüm paranı \$DOGE2\'ye bas. Pişman olmayacaksın."',
        channelName: 'Bilinmeyen Numara',
        accuracyRate: 5, // Çok düşük ihtimal ama...
        baseImpact: 10000.0, // Tutarsa inanılmaz kazanç
      ),
    ];
  }
}