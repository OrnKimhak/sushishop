import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sushishop/page/auth/signin_signup_widget.dart';
import 'package:sushishop/widget/button_customize.dart';
import 'package:sushishop/widget/color_path.dart';
import 'package:sushishop/widget/text_customize.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("")),
                ),
              ),
              SigninSignupWidget(
                hint: "Enter Email...",
                iconleft: Icons.email,
                controller: null,
                text: 'Email',
              ),

              SizedBox(height: 40),
              SigninSignupWidget(
                obsecureText: true,
                hint: "Enter Password...",
                iconleft: Icons.lock,
                controller: null,
                text: 'Password',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: AppColorPath.blue),
                    ),
                  ],
                ),
              ),
              // Button sign in
              ButtonCustomize(
                iconscolor: AppColorPath.black,
                  width: 100,height: 15,
                text: 'Sign In',
                size: 15,
                bgcolor: AppColorPath.bleu,
                textcolor: AppColorPath.white,
                onPressed: () {},
              ),SizedBox(height: 40,),
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
                  ButtonCustomize(iconscolor: AppColorPath.black,
                    width: 100,height: 15,
                    images: 'assets/images/google.jpg',
                    text: 'Sign in with Google',
                    size: 15,
                    bgcolor: AppColorPath.white,
                    textcolor: AppColorPath.black,
                    icons: Icons.apple,
                    onPressed: () {},
                  ),
                  SizedBox(height: 20),
                  ButtonCustomize(iconscolor: AppColorPath.black,
                    width: 100,height: 15,icons: Icons.facebook,
                    text: 'Sign in with Facebook',
                    size: 15,
                    bgcolor: AppColorPath.white,
                    textcolor: AppColorPath.black,
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
