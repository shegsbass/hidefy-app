import 'package:flutter/material.dart';
import 'package:hidefy/constants/app_color.dart';

import '../entities/onboarding_entity.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.onBoardingBgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 482,
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingData.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  final item = onboardingData[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(
                        width: 272.31,
                        height: 320,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(item.imgPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(height: 67),

                      Text(
                        'Welcome to HIDEFY',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Montserrat Alternates',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),

                      const SizedBox(height: 24),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28),
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Vel id morbi neque pharetra',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFE0E0E0),
                            fontSize: 16,
                            fontFamily: 'Montserrat Alternates',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: 0.02,
                          ),
                        ),
                      ),

                    ],
                  );
                },
              ),
            ),


            SizedBox(height: 32),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(onboardingData.length,
                      (index) => indicator(index, _currentPage == index)),
            ),


          ],
        ),
      ),
    );
  }

  Widget indicator(int index, bool isSelected) {
    if (!isSelected) {
      return Container(
        width: 10,
        height: 10,
        decoration: ShapeDecoration(
          color: Color(0xFFEDEDED),
          shape: CircleBorder(),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        width: 25,
        height: 10,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.63, -0.78),
            end: Alignment(-0.63, 0.78),
            colors: [Color(0xFF5FCCF7), Color(0xFFAE76F5), Color(0xFFF18EF8)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
    }
  }
}
