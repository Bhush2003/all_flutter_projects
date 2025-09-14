import 'package:agro_finder/View_Models/card.dart';
import 'package:flutter/material.dart';

class AgriculturalJobsPage extends StatefulWidget {
  @override
  _AgriculturalJobsPageState createState() => _AgriculturalJobsPageState();
}

class _AgriculturalJobsPageState extends State<AgriculturalJobsPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFAEEDE3),
      appBar: AppBar(
        title: Text('Explore Agricultural Jobs'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search for jobs or tools',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Nearby Opportunities Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nearby Opportunities',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                OpportunityCard(
                  title: 'Farm Fresh Produce',
                  distance: '100 meters away',
                  imageUrl: 'https://via.placeholder.com/150', // Replace with actual image
                ),
                OpportunityCard(
                  title: 'Tools Emporium',
                  distance: '150 meters away',
                  imageUrl: 'https://via.placeholder.com/150', // Replace with actual image
                ),
              ],
            ),
          ),

          // Product Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Product',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              ProductCard(
                title: 'Fertilize',
                icon: Icons.agriculture,
              ),
              ProductCard(
                title: 'Harvesting',
                icon: Icons.grass,
              ),
              ProductCard(
                title: 'Seeds',
                icon: Icons.eco,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My',
          ),
        ],
      ),
    );
  }
}