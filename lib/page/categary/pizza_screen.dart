import 'package:flutter/material.dart';

class PizzaScreen extends StatefulWidget {
  final String title;
  final Image image;
  final String des;
  final String price;
  final String rate;
  const PizzaScreen({
    super.key,
    required this.title,
    required this.image,
    required this.des,
    required this.price,
    required this.rate,
  });

  @override
  State<PizzaScreen> createState() => _PizzaScreenState();
}

class _PizzaScreenState extends State<PizzaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
