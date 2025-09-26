import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sushishop/data/food_list.dart';
import 'package:sushishop/widget/color_path.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  final String image;
  final String des;
  final String price;
  final String rate;
  const DetailScreen({
    super.key,
    required this.title,
    required this.image,
    required this.des,
    required this.price,
    required this.rate,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPath.red,
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200),
            ),
            child: Image.asset(
              widget.image,
              height: 500,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new,color: AppColorPath.white,),
                  ),
                  Text(
                    widget.title,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColorPath.white,
                    ),
                  ),
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: AppColorPath.white,size: 24,))
            ],
          ),

          // ImageSlideshow(
          //   width: double.infinity,
          //   height: 200,
          //   initialPage: 0,
          //   autoPlayInterval: 5000,
          //   isLoop: true,
          //   children: List.generate(Myfood.length, (index) {
          //     return Container(
          //       height: 200,
          //       width: double.infinity,
          //       child: Image.asset("${Myfood[index]['image']}",fit: BoxFit.cover,),
          //     );
          //   }),
          // ),
        ],
      ),
    );
  }
}
