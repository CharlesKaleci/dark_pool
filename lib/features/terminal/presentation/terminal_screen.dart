import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'terminal_provider.dart';
import 'widgets/news_card.dart';

class TerminalScreen extends ConsumerWidget {
  const TerminalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Riverpod üzerinden haber listemizi dinliyoruz
    final newsList = ref.watch(newsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('DARK POOL TERMINAL', style: TextStyle(letterSpacing: 2)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: newsList.isEmpty
            ? const Center(child: Text('Piyasa kapalı. Yeni haber bekleniyor...'))
            : Column(
                children: [
                  // İleride buraya Bakiye ve Mum Grafiği (HUD) gelecek
                  const SizedBox(height: 20),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CardSwiper(
                        cardsCount: newsList.length,
                        cardBuilder: (context, index, percentThresholdX, percentThresholdY) {
                          return NewsCard(news: newsList[index]);
                        },
                        onSwipe: (previousIndex, currentIndex, direction) {
                          // TODO: Kaydırma yönüne göre (Sağ/Sol/Yukarı) bakiye güncellemesi yapılacak
                          debugPrint('Kart kaydırıldı. Yön: $direction');
                          return true; // true dönersek kart kaybolur
                        },
                        // Sadece Sağ (Yatırım), Sol (Şort) ve Yukarı (Pas) izin veriyoruz
                        allowedSwipeDirection: const AllowedSwipeDirection.only(
                          right: true,
                          left: true,
                          up: true,
                          down: false,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40), // Alt navigasyona mesafe
                ],
              ),
      ),
    );
  }
}