import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sushishop/data/item_list.dart';
import 'package:sushishop/firebase_options.dart';
import 'package:sushishop/page/auth/sign_in.dart';
import 'package:sushishop/page/auth/sign_up.dart';
import 'package:sushishop/page/categary/pizza_screen.dart';
import 'package:sushishop/page/intro_page.dart';
import 'package:sushishop/page/menu_page.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}
