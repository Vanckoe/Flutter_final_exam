import 'package:digital_marketing/presentation/app/app_router.dart';
import 'package:digital_marketing/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DigitalMarketingApp extends StatelessWidget {
  const DigitalMarketingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Digital Marketing',
      theme: AppTheme.appTheme,
    );
  }
}
