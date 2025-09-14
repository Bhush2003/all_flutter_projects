import 'package:flutter/material.dart';

class Forgivecategory {
  final IconData icon;
  final String title;
  final Color color;
  const Forgivecategory(
      {required this.icon, required this.title, required this.color});

  Widget categoryToShow() {
    return Container(
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 6,),
          Text(title)
        ],
      ),
    );
  }
}
