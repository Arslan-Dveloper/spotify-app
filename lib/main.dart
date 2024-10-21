import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/helper/constant.dart';
import 'package:spotify/theme/dark_theme.dart';
import 'package:spotify/theme/light_theme.dart';
import 'package:spotify/views/get_start_screen.dart';
import 'package:spotify/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(seconds: 4));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // theme: ThemeData(
          //   colorScheme: ColorScheme.fromSeed(
          //     seedColor: AppColor.whiteColor,
          //   ),
          //   useMaterial3: true,
          // ),

          // dark theme
          theme: ThemeData(
            brightness: Brightness.dark,
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColor.hintTextColor,
                  fontFamily: "staobold"),
              border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColor.whiteColor.withOpacity(0.14)),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColor.whiteColor.withOpacity(0.14), width: 3),
                borderRadius: BorderRadius.circular(30),

              ),
              enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.whiteColor.withOpacity(
                    0.14,
                  ),
                ),
                borderRadius: BorderRadius.circular(30),
              )
            ),
          ),
          // theme: lightTheme,
          // darkTheme: darkTheme,
          //home: SplashScreen(),
          home: GetStartScreen(),
        );
      },
    );
  }
}
