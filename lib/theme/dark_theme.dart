// // import 'package:flutter/material.dart';
// // import 'package:sixam_mart/util/app_constants.dart';
// //
// // ThemeData dark({Color color = const Color(0xFF54b46b)}) => ThemeData(
// //   fontFamily: AppConstants.fontFamily,
// //   primaryColor: color,
// //   secondaryHeaderColor: const Color(0xFF009f67),
// //   disabledColor: const Color(0xffa2a7ad),
// //   brightness: Brightness.dark,
// //   hintColor: const Color(0xFFbebebe),
// //   cardColor: const Color(0xFF30313C),
// //   shadowColor: Colors.white.withValues(alpha: 0.03),
// //   textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white70)),
// //   textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: color)),
// //   colorScheme: ColorScheme.dark(primary: color, secondary: color).copyWith(surface: const Color(0xFF191A26)).copyWith(error: const Color(0xFFdd3135)),
// //   popupMenuTheme: const PopupMenuThemeData(color: Color(0xFF29292D), surfaceTintColor: Color(0xFF29292D)),
// //   dialogTheme: const DialogThemeData(surfaceTintColor: Colors.white10),
// //   floatingActionButtonTheme: FloatingActionButtonThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500))),
// //   bottomAppBarTheme: const BottomAppBarThemeData(
// //     surfaceTintColor: Colors.black, height: 60,
// //     padding: EdgeInsets.symmetric(vertical: 5),
// //   ),
// //   dividerTheme: const DividerThemeData(thickness: 0.5, color: Color(0xFFA0A4A8)),
// //   tabBarTheme: const TabBarThemeData(dividerColor: Colors.transparent),
// // );
// import 'package:flutter/material.dart';
// import 'package:sixam_mart/util/app_constants.dart';
//
// ThemeData dark({Color color = const Color(0xFF9181F4)}) => ThemeData( // تم تغيير اللون الأساسي للبنفسجي الفاتح
//   fontFamily: AppConstants.fontFamily,
//   primaryColor: color,
//   secondaryHeaderColor: const Color(0xFF7B6AD1), // درجة أغمق قليلاً للبنفسجي
//   disabledColor: const Color(0xffa2a7ad),
//   brightness: Brightness.dark,
//   hintColor: const Color(0xFFbebebe),
//
//   // لون الكروت (المربعات) في الصورة رقم 1
//   cardColor: const Color(0xFF252541),
//
//   shadowColor: Colors.black.withValues(alpha: 0.5),
//   textTheme: const TextTheme(
//     bodyMedium: TextStyle(color: Colors.white), // نصوص بيضاء واضحة
//     bodySmall: TextStyle(color: Colors.white70),
//   ),
//
//   textButtonTheme: TextButtonThemeData(
//     style: TextButton.styleFrom(foregroundColor: color),
//   ),
//
//   // إعدادات نظام الألوان الكاملة
//   colorScheme: ColorScheme.dark(
//     primary: color,
//     secondary: const Color(0xFFBB86FC),
//     // لون الخلفية الأساسية للتطبيق (اللون الداكن العميق في الصورة 1)
//     surface: const Color(0xFF13132B),
//     error: const Color(0xFFdd3135),
//   ),
//
//   popupMenuTheme: const PopupMenuThemeData(
//     color: Color(0xFF252541),
//     surfaceTintColor: Color(0xFF252541),
//   ),
//
//   dialogTheme: const DialogThemeData(
//     surfaceTintColor: Colors.white10,
//     backgroundColor: Color(0xFF13132B),
//   ),
//
//   floatingActionButtonTheme: FloatingActionButtonThemeData(
//     backgroundColor: color,
//     foregroundColor: Colors.white,
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500)),
//   ),
//
//   bottomAppBarTheme: const BottomAppBarThemeData(
//     // لون القائمة السفلية
//     surfaceTintColor: Color(0xFF13132B),
//     color: Color(0xFF13132B),
//     height: 60,
//     padding: EdgeInsets.symmetric(vertical: 5),
//   ),
//
//   dividerTheme: const DividerThemeData(
//     thickness: 0.5,
//     color: Color(0xFF3E3E5C),
//   ),
//
//   tabBarTheme: const TabBarThemeData(dividerColor: Colors.transparent),
// );
import 'package:flutter/material.dart';
import 'package:sixam_mart/util/app_constants.dart';

// تم استخدام لون اللافندر من اللوجو كـ Primary Color
ThemeData dark({

  Color color = const Color(0xFFB4A7E5)}) => ThemeData(
  // داخل دالة dark() في ملف الثيم
  //new 15/3
  colorScheme: ColorScheme.dark(
    primary: color,
    secondary: const Color(0xFF2E2A5E), // سنستخدم secondary للطبقة الأولى من التدرج
    surface: const Color(0xFF0F0C29),
    tertiary: const Color(0xFF1B1839), // سنستخدم tertiary للطبقة الثانية من التدرج
  ).copyWith(error: const Color(0xFFdd3135)),
  //end 15/3
  fontFamily: AppConstants.fontFamily,
  primaryColor: color,
  secondaryHeaderColor: const Color(0xFF8E82C1),
  // درجة متوسطة بين البنفسجي والرمادي
  disabledColor: const Color(0xFF626281),
  brightness: Brightness.dark,
  hintColor: const Color(0xFF9E9EBA),

  // لون الكروت مستوحى من الدرجة الداكنة في خلفية اللوجو
  cardColor: const Color(0xFF231F4A),

  shadowColor: Colors.black.withValues(alpha: 0.5),

  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color(0xFFECEBFF)),
    // أبيض مائل للبنفسجي الفاتح جداً
    bodySmall: TextStyle(color: Color(0xFFB4A7E5)), // نصوص ثانوية بلون اللافندر
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: color),
  ),

  // colorScheme: ColorScheme.dark(
  //   primary: color,
  //   secondary: const Color(0xFF7469B6),
  //   // لون بنفسجي مشبع من تفاصيل الشعار
  //   surface: const Color(0xFF0F0C29),
  //   // خلفية داكنة جداً (Deep Navy) كالتي في أعلى اللوجو
  //   error: const Color(0xFFFF4B6B),
  // ),

  popupMenuTheme: const PopupMenuThemeData(
    color: Color(0xFF231F4A),
    surfaceTintColor: Color(0xFF231F4A),
  ),

  dialogTheme: const DialogThemeData(
    backgroundColor: Color(0xFF0F0C29),
    surfaceTintColor: Colors.white10,
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: color,
    foregroundColor: const Color(0xFF0F0C29),
    // أيقونة داكنة فوق زر فاتح للتباين
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500)),
  ),

  bottomAppBarTheme: const BottomAppBarThemeData(
    color: Color(0xFF0F0C29),
    surfaceTintColor: Color(0xFF0F0C29),
    height: 65,
    padding: EdgeInsets.symmetric(vertical: 5),
  ),

  dividerTheme: const DividerThemeData(
    thickness: 0.8,
    color: Color(0xFF342F61), // لون فواصل متناغم مع الخلفية الداكنة
  ),

  tabBarTheme: const TabBarThemeData(
    dividerColor: Colors.transparent,
    labelColor: Colors.white,
    unselectedLabelColor: Color(0xFF9E9EBA),
  ),

);
