import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/terminal/presentation/terminal_screen.dart';
import '../../features/vault/presentation/vault_screen.dart';
import '../../features/museum/presentation/museum_screen.dart';
import '../../features/insider/presentation/insider_screen.dart';
import '../widgets/main_layout.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/terminal',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainLayout(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [GoRoute(path: '/terminal', builder: (context, state) => const TerminalScreen())],
        ),
        StatefulShellBranch(
          routes: [GoRoute(path: '/vault', builder: (context, state) => const VaultScreen())],
        ),
        StatefulShellBranch(
          routes: [GoRoute(path: '/museum', builder: (context, state) => const MuseumScreen())],
        ),
        StatefulShellBranch(
          routes: [GoRoute(path: '/insider', builder: (context, state) => const InsiderScreen())],
        ),
      ],
    ),
  ],
);