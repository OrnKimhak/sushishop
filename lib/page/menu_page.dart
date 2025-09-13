import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sushishop/components/circle_button.dart';
// import 'package:sushishop/components/button.dart';
import 'package:sushishop/components/search_component.dart';
import 'package:sushishop/components/slideshow.dart';
import 'package:sushishop/data/food_list.dart';
import 'package:sushishop/widget/color_path.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPath.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    // Search bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SearchComponent(
                          iconleft: Icons.search,
                          text: 'Type to search',
                        ),
                        SizedBox(width: 10),
                        CircleButton(
                          bgcolors: AppColorPath.red,
                          icon: Icons.filter_list,
                          onPressed: () {},
                          colors: AppColorPath.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Search bar
                    // Slide show advertisement
                    ImageSlideshow(
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
                  ],
                ),
              ), //Slide show advertisement
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Food Menu",
                      style: TextStyle(
                        color: AppColorPath.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: AppColorPath.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 600,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: ListView.builder(
                    itemCount: Myfood.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColorPath.red,
                              boxShadow: [
                                BoxShadow(
                                  color: AppColorPath.grey.withAlpha(70),
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "${Myfood[index]['image']}",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(left: 20,bottom: 20,
                            child: Container(
                              width: 180,
                              height: 50,
                              decoration: BoxDecoration(
                                color: AppColorPath.orange.withAlpha(200),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "${Myfood[index]['name']}",
                                  style: TextStyle(
                                    color: AppColorPath.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),Positioned(top: 10,right: 10,
                            child: CircleButton(icon: Icons.heart_broken, onPressed: (){}))
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
