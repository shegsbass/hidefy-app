import 'package:flutter/material.dart';

class TopDecor extends StatelessWidget {
  const TopDecor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 19, right: 10),
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