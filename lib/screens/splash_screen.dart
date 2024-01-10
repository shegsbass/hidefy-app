import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hidefy/constants/app_color.dart';
import 'package:hidefy/screens/homepage.dart';
import 'package:hidefy/screens/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: AppColor.onBoardingBgColor,
      useImmersiveMode: true,
      duration: const Duration(milliseconds: 1500),
      animationDuration: const Duration(milliseconds: 1000),
      onAnimationEnd: () => debugPrint("On Scale End"),
      nextScreen: const OnboardingScreen(),
        childWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 195,
              height: 213,
              child: Image.asset('assets/images/splash_logo.png'),
            ),
          ],
        ),
    );
  }
}
