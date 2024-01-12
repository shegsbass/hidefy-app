import 'package:flutter/material.dart';
import 'package:hidefy/constants/app_color.dart';

class CustomAccountQuestion extends StatelessWidget {

  final String accountStatustext;
  final String authTypeText;

  const CustomAccountQuestion({
    super.key,
    required this.accountStatustext,
    required this.authTypeText
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Text(
          accountStatustext,
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
          authTypeText,
          style: TextStyle(
            color: AppColor.primaryButtonColor,
            fontSize: 16,
            fontFamily: 'Montserrat Alternates',
            fontWeight: FontWeight.w500,
            letterSpacing: 0.02,
          ),
        ),
      ],
    );
  }
}
