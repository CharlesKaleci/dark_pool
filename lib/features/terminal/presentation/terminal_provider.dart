import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/news_model.dart';
import '../data/mock_news_repository.dart';

// Haber akışımızı tutacak olan Provider
final newsProvider = NotifierProvider<NewsNotifier, List<NewsModel>>(() {
  return NewsNotifier();
});

class NewsNotifier extends Notifier<List<NewsModel>> {
  @override
  List<NewsModel> build() {
    // Uygulama açıldığında sahte verilerimizi yüklüyoruz
    return MockNewsRepository().getInitialNews();
  }

  // İleride kart kaydırıldıkça listeyi güncellemek için buraya metodlar ekleyeceğiz
}