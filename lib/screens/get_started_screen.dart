import 'package:flutter/material.dart';
import 'package:hidefy/constants/app_color.dart';
import 'package:hidefy/screens/login_screen.dart';
import 'package:hidefy/screens/sign_up_screen.dart';
import 'package:hidefy/screens/utils/custom_account_question_text.dart';
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
                    buttonColor: AppColor.primaryButtonColor,
                    onTap: (){
                      print('Button tapped!');
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                          ),
                      );
                    }
                ),
              ),

              SizedBox(height: 32),

              GestureDetector(
                onTap: () {
                  print('Create text clicked');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: CustomAccountQuestion(
                    accountStatustext: 'Have an account?',
                    authTypeText: 'Login',
                ),
              )

            ],
          ),
      ),
    );
  }
}
