import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sushishop/page/auth/sign_in.dart';
import 'package:sushishop/page/intro_page.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignInPage());
  }
}
