import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_list/Model/forgivecategory.dart';
import 'package:to_do_list/View/Screens/Index%20Screen/Home.dart';

class BuildCategoryItem {
  IconData icon=Icons.note;
  String label="Nate";
  Color color=Color.fromRGBO(65, 204, 167, 1);
  int i = 0;
  int f = 0;

  List buildCategoryItemList() {
    BuildCategoryItem category = BuildCategoryItem();
    List<Widget> listOfCategory = [
      category.buildCategoryItem(Icons.local_grocery_store, 'Grocery',
          const Color.fromRGBO(201, 204, 65, 1)),
      category.buildCategoryItem(
          Icons.work, 'Work', const Color.fromRGBO(102, 204, 65, 1)),
      category.buildCategoryItem(
          Icons.sports, 'Sport', const Color.fromRGBO(65, 204, 167, 1)),
      category.buildCategoryItem(Icons.design_services, 'Design',
          const Color.fromRGBO(65, 129, 204, 11)),
      category.buildCategoryItem(
          Icons.school, 'University', const Color.fromRGBO(65, 162, 204, 1)),
      category.buildCategoryItem(
          Icons.group, 'Social', const Color.fromRGBO(204, 132, 65, 1)),
      category.buildCategoryItem(
          Icons.music_note, 'Music', const Color.fromRGBO(151, 65, 204, 1)),
      category.buildCategoryItem(Icons.health_and_safety, 'Health',
          const Color.fromRGBO(204, 65, 115, 1)),
      category.buildCategoryItem(
          Icons.movie, 'Movie', const Color.fromRGBO(201, 204, 65, 1)),
      category.buildCategoryItem(
          Icons.home, 'Home', const Color.fromRGBO(65, 204, 167, 1)),
      category.buildCategoryItem(
          Icons.add, "New Category", const Color.fromRGBO(151, 65, 204, 1)),
    ];
    return listOfCategory;
  }

  Widget buildCategoryItem(IconData icon, String label, Color color) {
    return GestureDetector(
      onTap: () {
        this.icon = icon;
        this.label = label;
        this.color = color;
        
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30.0,
            child: Icon(icon, size: 30.0),
          ),
          const SizedBox(height: 10.0),
          Text(label, style: const TextStyle(fontSize: 12.0)),
        ],
      ),
    );
  }

  Widget categoryToShow() {
    return Container(
      child: Row(
        children: [
          Icon(this.icon),
          SizedBox(
            width: 6,
          ),
          Text(this.label)
        ],
      ),
    );
  }
}
