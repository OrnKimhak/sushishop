import 'package:flutter/material.dart';
import 'package:sushishop/components/button.dart';
import 'package:sushishop/widget/color_path.dart';

// ignore: must_be_immutable
class Slideshow extends StatelessWidget {
  double h;
  double w;
  String text;
  String btntext;
  Image image;
  Color bgcolor;
  Slideshow({
    super.key,
    required this.h,
    required this.w,
    required this.text,
    required this.image,
    required this.btntext,
required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:bgcolor,
      ),
      // padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(
                text,
                style: TextStyle(fontSize: 20, color: AppColorPath.white),
              ),
              SizedBox(height: 10),
              MyButton(text: btntext, onTap: () {}),
            ],
          ),
          SizedBox(width: 20,),
          Container(
            height: h,
            width: w,
            child: image,
          )
        ],
      ),
    );
  }
}
