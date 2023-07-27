import 'package:flutter/material.dart';

class LogoPNGWidget extends StatelessWidget {
  final double scale;
  const LogoPNGWidget({
    super.key, required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/tiffily_partner_logo.png',
      scale: scale,
    );
  }
}
