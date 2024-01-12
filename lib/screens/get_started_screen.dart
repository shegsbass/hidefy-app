import 'package:flutter/material.dart';
import 'package:hidefy/constants/app_color.dart';
import 'package:hidefy/screens/utils/primary_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 76),
                child: Image.asset('assets/images/hidefy_text.png'),
              ),

              SizedBox(height: 101),

              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Image.asset('assets/images/onboarding_three.png'),
              ),

              SizedBox(height: 78),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: PrimaryButton(
                    text: 'GET STARTED',
                    width: 390,
                    height: 54,
                    textColor: Colors.white,
                    buttonColor: Color(0xFFA889E6),
                    onTap: (){
                      print('Button tapped!');
                    }
                ),
              ),

              SizedBox(height: 32),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text(
                    'Have an account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Montserrat Alternates',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.02,
                    ),
                  ),

                  SizedBox(width: 14),

                  Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFFA889E6),
                      fontSize: 16,
                      fontFamily: 'Montserrat Alternates',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.02,
                    ),
                  ),
                ],
              ),

            ],
          ),
      ),
    );
  }
}
