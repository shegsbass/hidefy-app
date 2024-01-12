import 'package:flutter/material.dart';
import 'package:hidefy/constants/app_color.dart';
import 'package:hidefy/screens/onboarding_screen.dart';
import 'package:hidefy/screens/sign_up_screen.dart';
import 'package:hidefy/screens/utils/auth_screen_top_decor.dart';
import 'package:hidefy/screens/utils/custom_account_question_text.dart';
import 'package:hidefy/screens/utils/custom_textfield.dart';
import 'package:hidefy/screens/utils/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                GreetingSection(),

                SizedBox(height: 44),

                GoogleLoginSection(),

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

                SizedBox(height: 12),

                ForgotPasswordSection(),

                SizedBox(height: 24),

                PrimaryButton(
                  text: 'LOGIN',
                  width: 390,
                  height: 54,
                  textColor: Colors.white,
                  buttonColor: AppColor.primaryButtonColor,
                  onTap: () {
                    print('Button clicked');
                  },
                ),

                SizedBox(height: 32),

                AccountStatusSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class GoogleLoginSection extends StatelessWidget {
  const GoogleLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final String hintText;

  const PasswordTextField({super.key, required this.hintText});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: passwordVisible,
        style: TextStyle(
          // Add this style property
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Montserrat Alternates',
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Montserrat Alternates',
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: Image.asset(
            'assets/icons/lock_icon.png',
            width: 24,
            height: 24,
          ),
          suffixIcon: IconButton(
            icon:
                Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
            color: Colors.white,
            onPressed: () {
              setState(
                () {
                  passwordVisible = !passwordVisible;
                },
              );
            },
          ),
          alignLabelWithHint: false,
          filled: true,
          fillColor: AppColor.primaryColor,
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Set the corner radius here
            borderSide: BorderSide.none,
          ),
        ),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}

class ForgotPasswordSection extends StatelessWidget {
  const ForgotPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Forgot Password?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Montserrat Alternates',
            fontWeight: FontWeight.w500,
            height: 0.07,
          ),
        )
      ],
    );
  }
}

class AccountStatusSection extends StatelessWidget {
  const AccountStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Create text clicked');
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SignupScreen(),
          ),
        );
      },
      child: CustomAccountQuestion(
        accountStatustext: 'Don\'t have an account?',
        authTypeText: 'Create',
      ),
    );
  }
}
