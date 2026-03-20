import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vitory_app/core/theme/app_theme.dart';
import 'package:vitory_app/core/router/app_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: VitoryApp(),
    ),
  );
}

class VitoryApp extends ConsumerWidget {
  const VitoryApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'VITORY',
      theme: AppTheme.light,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
