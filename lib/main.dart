import 'package:flutter/material.dart';
import 'package:tiffily_1/app_theme.dart';
import 'package:tiffily_1/routes/routes.dart';
import 'package:tiffily_1/screens/home_screen.dart';
import 'package:tiffily_1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: CustomRoutes.splashScreen,
      routes: {
        CustomRoutes.homeRoute: (context) => const HomeScreen(),
        CustomRoutes.splashScreen: (context) => const SplashScreen(),
      },

    );
  }
}
