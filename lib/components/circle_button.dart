import 'package:flutter/material.dart';
import 'package:sushishop/widget/color_path.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color? colors;final Color? bgcolors;

  const CircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.colors, this.bgcolors,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: bgcolors,
      child: IconButton(

        onPressed: onPressed,
        icon: Icon(icon, color: colors),
      ),
    );
  }
}
