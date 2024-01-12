import 'package:flutter/material.dart';
import 'package:hidefy/constants/app_color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopDecor(),
            GreetingSection(),
            SizedBox(height: 44),
            GoogleLoginSection(),
          ],
        ),
      ),
    );
  }
}

class TopDecor extends StatelessWidget {
  const TopDecor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 19, right: 30),
          child: Container(
            width: 53,
            height: 45,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.63, -0.78),
                        end: Alignment(-0.63, 0.78),
                        colors: [
                          Color(0xFF5FCCF7),
                          Color(0xFFAE76F5),
                          Color(0xFFF18EF8)
                        ],
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 38,
                  top: 30,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEE91A6),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: 'Montserrat Alternates',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Please sign in to continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Montserrat Alternates',
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}

class GoogleLoginSection extends StatelessWidget {
  const GoogleLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Column(
        children: [
          Container(
            width: 390,
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: ShapeDecoration(
              color: Color(0xFF0E0D17),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                    'assets/images/google_logo.png',
                  width: 24,
                  height: 24,
                ),

                const SizedBox(width: 20),

                Text(
                  'Continue with Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Montserrat Alternates',
                    fontWeight: FontWeight.w500,
                    height: 0.07,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),
          
          Text(
              'OR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

