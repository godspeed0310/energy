import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.primary80,
      indicatorColor: AppColors.indicatorColor,
      iconTheme: MaterialStateProperty.all(
        IconThemeData(
          color: AppColors.labelColor,
        ),
      ),
      labelTextStyle: MaterialStateProperty.all(
        GoogleFonts.dmSans(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          height: 1.33,
          color: AppColors.labelColor,
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.background,
      titleTextStyle: GoogleFonts.dmSans(
        color: AppColors.titleColor,
        fontSize: 24,
        height: 1.33,
      ),
    ),
  );
}

final defaultSystemOverlay = SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: AppColors.background,
  systemNavigationBarIconBrightness: Brightness.dark,
);

class AppColors {
  static Color charging40 = const Color(0xFF039812);
  static Color charging90 = const Color(0xFFD1FAD5);
  static Color warning40 = const Color(0xFFDC6803);
  static Color warning90 = const Color(0xFFFEF0C7);
  static Color error40 = const Color(0xFF980303);
  static Color error90 = const Color(0xFFFAD1D1);
  static Color success40 = const Color(0xFF039855);
  static Color success90 = const Color(0xFFD1FADF);
  static Color primary80 = const Color(0xFFFFB2BA);
  static Color background = const Color(0xFFF9EFF2);
  static Color indicatorColor = const Color(0xFFFCFCFC);
  static Color cardColor = Colors.white;
  static Color titleColor = const Color(0xFF373131);
  static Color labelColor = const Color(0xFF4F0F1C);
}
