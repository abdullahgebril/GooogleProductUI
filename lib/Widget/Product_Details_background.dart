import 'package:flutter/material.dart';

class ProductDetailsBackground extends StatelessWidget {
  final screenHeight;
  final screenWidth;
  ProductDetailsBackground(this.screenHeight, this.screenWidth);
  @override
  Widget build(BuildContext context) {
    return Stack(
//      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          top: screenHeight * -0.4,
          left: screenWidth * 0.2,
          child: Container(
            height: screenHeight * 1.2,
            width: screenWidth * 1.2,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          top: screenHeight * 0.2,
          child: Image.asset(
            'assets/images/google_text_logo.png',
            color: Color(0xFFEFEFEF).withOpacity(0.4),
          ),
        )
      ],
    );
  }
}
