import 'package:flutter/material.dart';
import 'package:sushishop/page/auth/signin_signup_widget.dart';
import 'package:sushishop/widget/color_path.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("")),
            ),
          ),
          Column(
            children: [
              SigninSignupWidget(
                hint: "Enter Email",
                iconleft: Icons.email,
                controller: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
