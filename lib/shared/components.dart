import 'package:bookly_app/shared/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.borderRaduis,
    this.fontSize
});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRaduis;
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor:backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius:borderRaduis?? BorderRadius.circular(
                16
              ),
            )
          ),
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
            color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize
            ),
          )
      ),
    );
  }


}
