// import 'package:flutter/material.dart';
// import 'package:sixam_mart/util/app_constants.dart';
//
// ThemeData light({Color color = const Color(0xFF039D55)}) => ThemeData(
//   fontFamily: AppConstants.fontFamily,
//   primaryColor: color,
//   secondaryHeaderColor: const Color(0xFF1ED7AA),
//   disabledColor: const Color(0xFF9F9F9F),
//   brightness: Brightness.light,
//   hintColor: const Color(0xFF9F9F9F),
//   cardColor: Colors.white,
//   shadowColor: Colors.black.withValues(alpha: 0.03),
//   textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: color)),
//   colorScheme: ColorScheme.light(primary: color, secondary: color).copyWith(
//       surface: const Color(0xFFFCFCFC)).copyWith(error: const Color(0xFFE84D4F)),
//   popupMenuTheme: const PopupMenuThemeData(color: Colors.white, surfaceTintColor: Colors.white),
//   dialogTheme: const DialogThemeData(surfaceTintColor: Colors.white),
//   floatingActionButtonTheme: FloatingActionButtonThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500))),
//   bottomAppBarTheme: const BottomAppBarThemeData(
//     surfaceTintColor: Colors.white, height: 60,
//     padding: EdgeInsets.symmetric(vertical: 5),
//   ),
//   dividerTheme: const DividerThemeData(thickness: 0.2, color: Color(0xFFA0A4A8)),
//   tabBarTheme: const TabBarThemeData(dividerColor: Colors.transparent),
// );
import 'package:flutter/material.dart';
import 'package:sixam_mart/util/app_constants.dart';

// اللون الأساسي هو البنفسجي اللافندر المستخلص من حرف الـ U في اللوجو
ThemeData light({Color color = const Color(0xFF7469B6)}) => ThemeData(
  // داخل دالة light() في ملف الثيم
  //new 15/3
  colorScheme: ColorScheme.light(
    primary: color,
    secondary: Colors.white, // الطبقة الأولى
    tertiary: const Color(0xFFF0EFFF), // الطبقة الثانية
  ).copyWith(surface: const Color(0xFFF8F9FF)),
  fontFamily: AppConstants.fontFamily,
  primaryColor: color,
  // درجة أفتح قليلاً للأسطح الثانوية
  secondaryHeaderColor: const Color(0xFFB4A7E5),
  disabledColor: const Color(0xFFBABFC4),
  brightness: Brightness.light,
  hintColor: const Color(0xFF9F9F9F),
  cardColor: Colors.white,

  // ظل ناعم يميل للبنفسجي الداكن ليعطي عمقاً يتناسب مع الهوية
  shadowColor: const Color(0xFF0F0C29).withValues(alpha: 0.05),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: color),
  ),

  // colorScheme: ColorScheme.light(
  //   primary: color,
  //   secondary: const Color(0xFF8E82C1),
  // ).copyWith(
  //   // خلفية بيضاء بلمسة "ثلجية" باردة لتناسب ألوان الموقع
  //   surface: const Color(0xFFF8F9FF),
  // ).copyWith(
  //   error: const Color(0xFFE84D4F),
  // ),

  popupMenuTheme: const PopupMenuThemeData(
    color: Colors.white,
    surfaceTintColor: Colors.white,
  ),

  dialogTheme: const DialogThemeData(
    surfaceTintColor: Colors.white,
    backgroundColor: Colors.white,
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: color,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500)),
  ),

  bottomAppBarTheme: const BottomAppBarThemeData(
    color: Colors.white,
    surfaceTintColor: Colors.white,
    height: 60,
    padding: EdgeInsets.symmetric(vertical: 5),
  ),

  dividerTheme: const DividerThemeData(
    thickness: 0.5,
    color: Color(0xFFE0E0F0), // فواصل فاتحة جداً مائلة للبنفسجي
  ),

  tabBarTheme: const TabBarThemeData(
    dividerColor: Colors.transparent,
    labelColor: Color(0xFF7469B6),
    unselectedLabelColor: Color(0xFF9F9F9F),
  ),
);