import 'package:flutter/material.dart';
import 'package:sushishop/components/button.dart';
import 'package:sushishop/page/auth/sign_in.dart';
import 'package:sushishop/page/auth/signin_signup_widget.dart';
import 'package:sushishop/page/menu_page.dart';
import 'package:sushishop/widget/color_path.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPath.red,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            //Title text
            Text(
              "SUSHI MAN",
              style: TextStyle(
                color: AppColorPath.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            //logo sushi shop
            SizedBox(height: 25),
            Image.asset('assets/images/logoremove.png'),

            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: TextStyle(
                color: AppColorPath.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            // description text
            SizedBox(height: 10),
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                color: AppColorPath.white,
                fontSize: 16,
                height: 2,
              ),
            ),
            SizedBox(height: 20),
            //button
            MyButton(
              text: "Get Started",
              onTap: () {
                //go to menu page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
