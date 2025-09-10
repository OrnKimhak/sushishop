import 'package:flutter/material.dart';
import 'package:sushishop/widget/color_path.dart';

class TextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData iconleft;
  final IconData? iconright;

  const TextField({
    super.key,
    required this.hint,
    required this.iconleft,
    this.iconright, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorPath.white,
      ),
      child: TextField(hint: hint,
       iconleft: iconleft,
        controller: controller),
    );
  }
}
