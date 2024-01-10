import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hidefy/constants/app_color.dart';
import 'package:hidefy/screens/homepage.dart';
import 'package:hidefy/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColor.onBoardingBgColor, // Change this to your desired color
        statusBarIconBrightness: Brightness.light, // Change the icon color (dark or light)
      ),
    );

    return MaterialApp(
      title: 'Hidefy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0E0D17)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
