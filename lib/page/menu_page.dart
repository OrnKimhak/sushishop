import 'package:flutter/material.dart';
import 'package:sushishop/components/button.dart';
import 'package:sushishop/components/search_component.dart';
import 'package:sushishop/widget/color_path.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPath.white,
      //Appbar
      appBar: AppBar(
        backgroundColor: AppColorPath.white,
        elevation: 0,
        leading: Icon(Icons.menu, color: AppColorPath.black),
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
          //promotion banner
          Container(
            decoration: BoxDecoration(
              color: AppColorPath.red,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get 32% Promotion',
                      style: TextStyle(color: AppColorPath.white, fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    MyButton(text: 'Redeem', onTap: () {}),
                  ],
                ),
                //image sushi
                Image.asset(
                  'assets/images/sushibanner.png',
                  height: 200,
                  width: 200,
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
