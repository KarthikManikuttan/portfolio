import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/app_colors.dart';

final customTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.scaffoldBgColor,
  textTheme: TextTheme(
    titleSmall: GoogleFonts.plusJakartaSans(
      color: AppColors.white,
      fontSize: 14,
    ),
    titleLarge: GoogleFonts.poppins(
      color: AppColors.white.withAlpha(20),
      fontSize: 50,
      fontWeight: FontWeight.w400,
    ),
  ),
);
