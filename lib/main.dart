import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hidefy/screens/homepage.dart';

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
        statusBarColor: Color(0xFF1A1A22), // Change this to your desired color
        statusBarIconBrightness: Brightness.light, // Change the icon color (dark or light)
      ),
    );

    return MaterialApp(
      title: 'Hidefy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
