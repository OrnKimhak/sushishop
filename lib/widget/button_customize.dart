import 'package:flutter/material.dart';
import 'package:sushishop/widget/color_path.dart';

class ButtonCustomize extends StatelessWidget {
  final String text;
  final double size;
  final Color bgcolor;
  final Color textcolor;
  final Function onPressed;
  final double width;
  final IconData? icons;
  final double height;
  final Color iconscolor;
  final String? images;
  const ButtonCustomize({
    super.key,
    required this.iconscolor,
    this.icons,
    required this.text,
    required this.size,
    required this.bgcolor,
    required this.textcolor,
    required this.onPressed,
    required this.width,
    required this.height,
    this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColorPath.black.withAlpha(70)),
      ),
      child: MaterialButton(
        onPressed: onPressed(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width, vertical: height),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icons, color: iconscolor),
              
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  color: textcolor,
                  fontSize: size,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
