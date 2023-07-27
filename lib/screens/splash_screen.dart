import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tiffily_1/customs/app_colors.dart';
import 'package:tiffily_1/screens/home_screen.dart';
import 'package:tiffily_1/widgets/logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(milliseconds: 1500),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.highlightColor2,
        child: const Center(
          child: LogoPNGWidget(scale: 2.5,),
        ),
      ),
    );
  }
}

