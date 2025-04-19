import 'package:flutter/material.dart';

class catageory extends StatelessWidget {
  catageory({super.key, this.text, this.color, this.ontap});

  String? text;
  Color? color;
  VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: screenWidth * 0.06),
        color: color,
        width: double.infinity,
        height: screenHeight * 0.08,
        child: Text(
          text ?? '',
          style: TextStyle(
            fontSize: screenWidth * 0.045,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
