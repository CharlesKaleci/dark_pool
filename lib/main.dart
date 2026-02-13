import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/router/app_router.dart';

void main() {
  runApp(
    // Riverpod'un çalışması için tüm uygulamayı ProviderScope ile sarıyoruz
    const ProviderScope(
      child: DarkPoolApp(),
    ),
  );
}

class DarkPoolApp extends StatelessWidget {
  const DarkPoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dark Pool: Insider',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black, // Dark pool ruhuna uygun karanlık tema
      ),
      routerConfig: goRouter,
    );
  }
}