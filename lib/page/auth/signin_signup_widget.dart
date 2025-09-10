import 'package:flutter/material.dart';
import 'package:sushishop/widget/color_path.dart';

// ignore: must_be_immutable
class SigninSignupWidget extends StatelessWidget {
  final String hint;
  final IconData iconleft;
  final IconData? iconright;
  TextEditingController? controller;
  SigninSignupWidget({
    super.key,
    required this.hint,
    required this.iconleft,
    this.iconright,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColorPath.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(iconleft),
          suffixIcon: Icon(iconright),
        ),
      ),
    );
  }
}
