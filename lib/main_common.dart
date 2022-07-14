import 'package:flutter/material.dart';

import 'app_config.dart';
import 'home.dart';

void mainCommon() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return _buildApp(config!.appDisplayName);
  }

  Widget _buildApp(String appName) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Flutter Flavors Example',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: const Color(0xFF43a047),
          secondary: const Color(0xFFffcc00),
        ),
      ),
      home: const Home(),
    );
  }
}
