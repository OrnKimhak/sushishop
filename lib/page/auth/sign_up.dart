import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sushishop/page/auth/signin_signup_widget.dart';
import 'package:sushishop/page/intro_page.dart';
import 'package:sushishop/widget/button_customize.dart';
import 'package:sushishop/widget/color_path.dart';
import 'package:sushishop/widget/text_customize.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPath.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCustomize(
                text: "Let's sign your in",
                size: 25,
                weight: FontWeight.bold,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: TextCustomize(
                  text: "Sign in and elevate your nutrition ",
                  size: 15,
                  weight: FontWeight.w300,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("")),
                ),
              ),
              SigninSignupWidget(
                hint: "Enter Name...",
                iconleft: Icons.person,
                controller: null,
                text: 'Name',
              ),SizedBox(height: 30,),
              SigninSignupWidget(
                hint: "Enter Email...",
                iconleft: Icons.email,
                controller: null,
                text: 'Email',
              ),

              SizedBox(height: 30),
              SigninSignupWidget(
                obsecureText: true,
                hint: "Enter Password...",
                iconleft: Icons.lock,
                controller: null,
                text: 'Password',
              ),
              SizedBox(height: 30),
              SigninSignupWidget(
                obsecureText: true,
                hint: "Enter Confirm Password...",
                iconleft: Icons.lock,
                controller: null,
                text: 'Confirm Password',
              ),
              Padding(
                padding: EdgeInsets.only(),
                child: Row(children: [
                  Checkbox(
                    value: _isChecked, onChanged: (bool? newValue) {
                    setState(() {
                      _isChecked = newValue ?? false;
                    });
                  })
                ],),
              ),
              // Button sign in
              ButtonCustomize(
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroPage()),
                  );
                },
                iconscolor: AppColorPath.black,
                width: 100,
                height: 15,
                text: 'Sign Up',
                size: 15,
                bgcolor: AppColorPath.bleu,
                textcolor: AppColorPath.white,
                onPressed: () {},
              ),
              SizedBox(height: 40),
              // Or sign in with
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColorPath.black.withAlpha(70),
                      thickness: 1,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Or Sign in with',
                    style: TextStyle(color: AppColorPath.black, fontSize: 15),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Divider(
                      color: AppColorPath.black.withAlpha(70),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              // Google and Facebook button
              Column(
                children: [
                  ButtonCustomize(
                    iconscolor: AppColorPath.black,
                    width: 100,
                    height: 15,
                    images: 'assets/images/google.jpg',
                    text: 'Sign in with Google',
                    size: 15,
                    bgcolor: AppColorPath.white,
                    textcolor: AppColorPath.black,
                    icons: Icons.apple,
                    onPressed: () {},
                    onClick: () {},
                  ),
                  SizedBox(height: 20),
                  ButtonCustomize(
                    iconscolor: AppColorPath.black,
                    width: 100,
                    height: 15,
                    icons: Icons.facebook,
                    text: 'Sign in with Facebook',
                    size: 15,
                    bgcolor: AppColorPath.white,
                    textcolor: AppColorPath.black,
                    onPressed: () {},
                    onClick: () {},
                  ),SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: AppColorPath.black,
                          fontSize: 16,
                        ),
                      ),TextCustomize(text: "Sign Up", size: 16, colors: AppColorPath.bleu,weight: FontWeight.bold,)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
