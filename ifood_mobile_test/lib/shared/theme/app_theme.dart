import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_colors.dart';
part 'app_typography.dart';

abstract class AppTheme {
  static ThemeData get config => ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(),
        primaryColor: AppColors.blue,
        accentColor: AppColors.blue,
      );
}
