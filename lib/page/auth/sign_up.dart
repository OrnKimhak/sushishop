import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool? _isChecked = false;


  Future<void> _signUp() async {
    if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Passwords do not match.")),
      );
      return;
    }
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("User Sign Up Successfully!")),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroPage()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("The password provided is too weak.")),
        );
      } else if (e.code == "email-already-in-use") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("The account already exists for that email.")),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message ?? "An error occurred.")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPath.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                TextCustomize(
                  text: "Let's sign you in",
                  size: 25,
                  weight: FontWeight.bold,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: TextCustomize(
                    text: "Sign in and elevate your nutrition",
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
                  controller: _nameController,
                  text: 'Name',
                ),
                SizedBox(height: 30),
                SigninSignupWidget(
                  hint: "Enter Email...",
                  iconleft: Icons.email,
                  controller: _emailController,
                  text: 'Email',
                ),
                SizedBox(height: 30),
                SigninSignupWidget(
                  obsecureText: true,
                  hint: "Enter Password...",
                  iconleft: Icons.lock,
                  iconright: Icons.remove_red_eye,
                  controller: _passwordController,
                  text: 'Password',
                ),
                SizedBox(height: 30),
                SigninSignupWidget(
                  obsecureText: true,
                  hint: "Confirm Password...",
                  iconright: Icons.remove_red_eye,
                  iconleft: Icons.lock,
                  controller: _confirmPasswordController,
                  text: 'Confirm Password',
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue ?? false;
                          });
                        },
                      ),
                      Text("I agree to the terms and conditions"),
                    ],
                  ),
                ),
                ButtonCustomize(
                  onClick: () {
                    setState(() {
                      _signUp();
                    });
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
                Column(
                  children: [
                    ButtonCustomize(
                      iconscolor: AppColorPath.black,
                      width: 100,
                      height: 15,
                      // images: 'assets/images/google.jpg',
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
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: AppColorPath.black,
                            fontSize: 16,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: TextCustomize(
                            text: "Sign In",
                            size: 16,
                            colors: AppColorPath.bleu,
                            weight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}