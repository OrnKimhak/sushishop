import 'package:flutter/material.dart';
import 'package:sushishop/widget/color_path.dart';

class BottomnavigationbarScreen extends StatefulWidget {
  const BottomnavigationbarScreen({super.key});

  @override
  State<BottomnavigationbarScreen> createState() =>
      _BottomnavigationbarScreenState();
}

class _BottomnavigationbarScreenState extends State<BottomnavigationbarScreen> {
  int _selectedIndex = 0;
  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColorPath.red,
      ),
      child: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        mouseCursor: SystemMouseCursors.click,
        backgroundColor: AppColorPath.red,
        unselectedItemColor: AppColorPath.white,
        selectedItemColor: AppColorPath.orange,
        currentIndex: _selectedIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
