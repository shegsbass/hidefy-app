import 'package:flutter/material.dart';
import 'package:hidefy/screens/login_screen.dart';
import 'package:hidefy/screens/utils/auth_screen_top_decor.dart';
import 'package:hidefy/screens/utils/custom_account_question_text.dart';
import 'package:hidefy/screens/utils/custom_textfield.dart';
import 'package:hidefy/screens/utils/primary_button.dart';

import '../constants/app_color.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopDecor(),
                CreateAccountTextSection(),

                SizedBox(height: 44),

                CustomTextField(
                    hintText: 'Full name',
                    prefixImgPath: Icon(
                        Icons.person_outline_rounded,
                      color: Colors.white,
                    ),
                ),

                SizedBox(height: 24),

                CustomTextField(
                  hintText: 'Email address',
                  prefixImgPath: Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 24),

                PasswordTextField(hintText: 'Password'),

                SizedBox(height: 24),

                PasswordTextField(hintText: 'Confirm Password'),

                SizedBox(height: 32),

                PrimaryButton(
                    text: 'SIGN UP',
                    width: 390,
                    height: 54,
                    textColor: Colors.white,
                    buttonColor: AppColor.primaryButtonColor,
                    onTap: (){

                    }
                ),

                SizedBox(height: 48),

                SignupAccountStatusSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class CreateAccountTextSection extends StatelessWidget {
  const CreateAccountTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create Account',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'Montserrat Alternates',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}


class SignupAccountStatusSection extends StatelessWidget {
  const SignupAccountStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Create text clicked');
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      child: CustomAccountQuestion(
        accountStatustext: 'Already have an account?',
        authTypeText: 'Login',
      ),
    );
  }
}
