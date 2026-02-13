import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainLayout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainLayout({super.key, required this.navigationShell});

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => _onTap(context, index),
        type: BottomNavigationBarType.fixed, // 4 ikon olduğu için fixed kullanıyoruz
        selectedItemColor: Colors.greenAccent, // Oyunun Matrix/Borsa temasına uygun
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black87,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.swipe), label: 'Terminal'),
          BottomNavigationBarItem(icon: Icon(Icons.memory), label: 'Vault'),
          BottomNavigationBarItem(icon: Icon(Icons.collections), label: 'Müze'),
          BottomNavigationBarItem(icon: Icon(Icons.warning_amber), label: 'Insider'),
        ],
      ),
    );
  }
}