import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 823),
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonColor,
                foregroundColor: AppColors.buttonTextColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                elevation: 0,
              ),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
            textTheme: TextTheme(
              headlineSmall: GoogleFonts.montserrat(
                color: AppColors.mainTextColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.33,
              ),
              headlineMedium: GoogleFonts.montserrat(
                color: AppColors.mainTextColor,
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.33,
              ),
              headlineLarge: GoogleFonts.montserrat(
                color: AppColors.mainTextColor,
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.33,
              ),
              bodySmall: GoogleFonts.montserrat(
                color: AppColors.mainTextColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.33,
              ),
              labelSmall: GoogleFonts.leagueSpartan(
                color: AppColors.buttonTextColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.33,
              ),
            ).apply(fontSizeFactor: 1.sp),
          ),
          home: const MainScreen(),
        );
      },
    );
  }
}

// 10:00 - 14:20
// 14:50 - 