import 'package:flutter/material.dart';
import 'package:hidefy/constants/app_color.dart';

class CustomTextField extends StatefulWidget {


  final String hintText;
  final Widget prefixImgPath;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixImgPath,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        style: TextStyle(  // Add this style property
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
          prefixIcon: widget.prefixImgPath,
          alignLabelWithHint: false,
          filled: true,
          fillColor: AppColor.primaryColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0), // Set the corner radius here
            borderSide: BorderSide.none,
          ),
        ),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
