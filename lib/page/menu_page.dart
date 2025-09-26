import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sushishop/components/circle_button.dart';
import 'package:sushishop/components/search_component.dart';
import 'package:sushishop/components/slideshow.dart';
import 'package:sushishop/data/food_list.dart';
import 'package:sushishop/page/categary/detail_screen.dart';
import 'package:sushishop/widget/bottomnavigationbar_screen.dart';
import 'package:sushishop/widget/color_path.dart';
import 'package:sushishop/widget/item_list_button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  
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
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu, color: AppColorPath.red),
                          ),
                          Text(
                            "SUSHI",
                            style: TextStyle(
                              fontSize: 24,
                              color: AppColorPath.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.location_on,
                              color: AppColorPath.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Search bar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
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
                    ),
                    SizedBox(height: 20),
                    // Search bar
////***********************************************************// Slide show advertisement
                    ImageSlideshow(
                      width: double.infinity,
                      height: 150,
                      initialPage: 0,
                      autoPlayInterval: 5000,
                      isLoop: true,
                      children: [
                        Slideshow(
                          h: 150,
                          bgcolor: AppColorPath.red,
                          btntext: 'Redeem',
                          text: 'Get 32% Promotion',
                          image: Image.asset(
                            'assets/images/sushibanner.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Slideshow(
                          h: 150,

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
                    // Item list Button
                    ItemListButton(),
                    // Food menu
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
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
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
 //***********************************************************************************Food Menu
                    Container(
                      height: 450,
                      child: GridView.builder(
                        itemCount: Myfood.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (BuildContext context, int Index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => DetailScreen(
                                        title: "${Myfood[Index]['name']}",
                                        image: "${Myfood[Index]['image']}",
                                        des: "${Myfood[Index]['description']}",
                                        price: "${Myfood[Index]['price']}",
                                        rate: "${Myfood[Index]['rate']}",
                                      ),
                                ),
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: AppColorPath.black.withAlpha(70),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColorPath.white.withAlpha(60),
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
  //  ********************************************************************* image of food                            //image of food
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "${Myfood[Index]['image']}",
                                      height: 140,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  //details of food
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),
                                            color: AppColorPath.red,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 2,
                                              horizontal: 8,
                                            ),
                                            child: Text(
                                              textAlign: TextAlign.center,
                                              "${Myfood[Index]['id']}",
                                              style: TextStyle(
                                                color: AppColorPath.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // name of food
                                        Expanded(
                                          child: Text(
                                            maxLines: 1,
                                            ".${Myfood[Index]['name']}",
                                            style: TextStyle(
                                              color: AppColorPath.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //Price
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "price: ${Myfood[Index]['price']}\$",
                                          style: TextStyle(
                                            color: AppColorPath.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
  //  ********************************************************************* rate and add to cart
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: AppColorPath.orange,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "${Myfood[Index]['rate']}",
                                              style: TextStyle(
                                                color: AppColorPath.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add_shopping_cart_rounded,
                                            size: 24,
                                            shadows: [
                                              Shadow(
                                                color: AppColorPath.grey,
                                                blurRadius: 2,
                                                offset: Offset(2, 1),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),//Slide show advertisement
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomnavigationbarScreen(),
    );
  }
}
