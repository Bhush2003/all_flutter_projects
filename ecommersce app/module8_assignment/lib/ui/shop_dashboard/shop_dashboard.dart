import 'package:flutter/material.dart';

class ShopDashboard extends StatefulWidget {
  const ShopDashboard({super.key});

  @override
  State<ShopDashboard> createState() => _ShopDashboardState();
}

class _ShopDashboardState extends State<ShopDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 150),
        child: AppBar(
          centerTitle: true,
          title: Text(
            "ShopEase",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          leading: Icon(Icons.menu),
          leadingWidth: 50,
          actions: [
            Icon(Icons.star, size: 32, color: Colors.black),
            SizedBox(width: 5),
            Icon(Icons.shopping_cart, size: 32, color: Colors.black),
            SizedBox(width: 10),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[?Colors.blue[800], ?Colors.blue[100]],
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size(360, 100),
            child: SizedBox(
              width: 360,
              height: 80,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search products",
                  suffixIcon: Icon(Icons.camera_alt),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        padding: EdgeInsetsGeometry.all(8),
        child: Column(
          children: [
            Row(
              children: [Text("Browse Categories"), Spacer(), Text("View All")],
            ),
            Wrap(
              children: List.generate(6, (index) {
                return Chip(label: Text("label    $index"));
              }),
            ),
            Container(
              height: 230,
              width: 360,
              padding: EdgeInsetsGeometry.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.lightGreen,
              ),
              child: Column(
                children: [
                  Text("Exclusive Deals"),
                  Text("Check out now"),
                  Spacer(),
                  Text("Discover more"),
                ],
              ),
            ),
            Row(children: [Text("Popular Items"), Spacer(), Text("See all")]),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 180,
                    width: 180,
                    padding: EdgeInsetsGeometry.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(image: NetworkImage('https://tse2.mm.bing.net/th/id/OIP.AUDkScIP20oUEU5u25toUQHaJj?pid=Api&P=0&h=180'),fit: BoxFit.fill)
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text("200"),
                            Spacer(),
                            Icon(Icons.favorite),
                            Icon(Icons.shopping_cart),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
