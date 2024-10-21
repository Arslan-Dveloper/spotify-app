import 'package:flutter/material.dart';
import '../helper/constant.dart';

class MyText extends StatelessWidget {
  String? text;
  double? fontSize;
  FontWeight? fontWeightText;
  Color? textColor;
  TextAlign? textAlignText;
  String? fontFaimly;

  MyText({
    required this.text,
    this.textColor,
    this.fontSize,
    this.fontWeightText,
    this.textAlignText,
    this.fontFaimly,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '${text}',
      textAlign: textAlignText,
      style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeightText,
          fontFamily: fontFaimly),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  String? hintText;
  Widget? suffixIconWidget;
  bool? obsecureText;

  MyTextFormField({
    required this.hintText,
    this.suffixIconWidget,
    this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334,
      child: TextFormField(
        obscureText: obsecureText ?? false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(35),
          hintText: hintText,
          suffixIcon: suffixIconWidget,
        ),
      ),
    );
  }
}
