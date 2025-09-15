import 'package:flutter/material.dart';
import 'package:sushishop/widget/color_path.dart';

// ignore: must_be_immutable
class SigninSignupWidget extends StatelessWidget {
  final String hint;
  final IconData iconleft;
  final IconData? iconright;
  final String text;
  TextEditingController? controller;
  final bool? obsecureText;
  SigninSignupWidget({
    super.key,
    required this.hint,
    required this.iconleft,
    required this.text,
    this.iconright,
    required this.controller, this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,hintStyle: TextStyle(color: AppColorPath.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white),
          ),
          prefixIcon: Icon(iconleft),
          suffixIcon: Icon(iconright),
          label: Text(text),
        ),obscureText: obsecureText??false,
      ),
    );
  }
}
