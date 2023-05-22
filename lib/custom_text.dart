import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  //constructor
  const CustomText(this.text,
      {super.key,
      this.fontsize}); // the text is a positional arugment and the fontsize is a named argument
  // class variable
  final String text;
  final double? fontsize;
  //build
  @override
  Widget build(context) {
    return Text(
      //change to text to custom text as per need
      text,
      style: TextStyle(
        //to style text
        fontSize: fontsize,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
