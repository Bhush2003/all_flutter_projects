import 'package:flutter/material.dart';
import 'package:module8_assignment/ui/shop_dashboard/shop_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ShopDashboard(),
    );
  }
}
