import 'package:flutter/material.dart';
import 'package:sushishop/data/item_list.dart';
import 'package:sushishop/widget/color_path.dart';

class ItemListButton extends StatefulWidget {
  const ItemListButton({super.key});

  @override
  State<ItemListButton> createState() => _ItemListButtonState();
}

class _ItemListButtonState extends State<ItemListButton> {
  int _selectedIndex = 0;
  void onTapSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity, // full width of screen
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                onTapSelected(index);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _selectedIndex == index
                    ? AppColorPath.orange
                    : AppColorPath.white,
              ),
              child: Text(
                "${itemlist[index]['name']}",
                style: TextStyle(
                  fontSize: 16,
                  color: _selectedIndex == index
                      ? AppColorPath.white
                      : AppColorPath.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
