import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(this.text,this.color,this.onTap);
  String text;
  Color color;
  Function () onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 23),
        width: double.infinity,
        height: 65,
        color: color,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18
          ),
        ),
      ),
    );
  }
}