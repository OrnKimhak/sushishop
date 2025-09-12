import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
// import 'package:sushishop/components/button.dart';
import 'package:sushishop/components/search_component.dart';
import 'package:sushishop/components/slideshow.dart';
import 'package:sushishop/widget/color_path.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPath.white,
      //Appbar
      appBar: AppBar(
        backgroundColor: AppColorPath.red,
        elevation: 0,
        leading: Icon(Icons.menu, color: AppColorPath.white),
        title: Center(
          child: Text(
            'Tokyo',
            style: TextStyle(
              color: AppColorPath.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ImageSlideshow(
              width: double.infinity,
              height: 200,
              initialPage: 0,
              autoPlayInterval: 5000,
              isLoop: true,
              children: [
                Slideshow(
                  h: 200,
                  w: 200,
                  bgcolor: AppColorPath.red,
                  btntext: 'Redeem',
                  text: 'Get 32% Promotion',
                  image: Image.asset(
                    'assets/images/sushibanner.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Slideshow(
                  h: 200,
                  w: 200,
                  bgcolor: AppColorPath.blue.withAlpha(80),
                  btntext: 'Redeem',
                  text: 'Get 32% Promotion',
                  image: Image.asset(
                    'assets/images/slide3.1.png',
                    // fit: BoxFit.cover,
                  ),
                ),
                Slideshow(
                  h: 200,
                  w: 200,
                  bgcolor: AppColorPath.grey,
                  btntext: 'Redeem',
                  text: 'Get 32% Promotion',
                  image: Image.asset(
                    'assets/images/sushibanner.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          // Search menu
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SearchComponent(
              iconleft: Icons.search,
              text: 'Search here...',
            ),
          ),
          // Food menu
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Food Menu",
              style: TextStyle(
                color: AppColorPath.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
