import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiffily_1/customs/app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(),
    colorScheme: ThemeData().colorScheme.copyWith(
      secondary: AppColors.secondaryColor.withOpacity(0.2)
    )
  );
}
