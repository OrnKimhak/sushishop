import 'package:flutter/material.dart';
import 'package:sushishop/widget/color_path.dart';

class SearchComponent extends StatelessWidget {
  final IconData? iconleft;
  final String text;
  const SearchComponent({
    super.key,
    required this.iconleft,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.7,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(iconleft),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: AppColorPath.white,
            ),
          ),
          hintText: text,
        ),
      ),
    );
  }
}
