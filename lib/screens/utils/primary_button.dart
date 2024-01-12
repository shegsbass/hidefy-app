import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onTap; // Function to be called when the button is tapped

  const PrimaryButton({
    required this.text,
    required this.width,
    required this.height,
    required this.textColor,
    required this.buttonColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: textColor, // Assume text color should be white
                fontSize: 16,
                fontFamily: 'Montserrat Alternates',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.08,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
