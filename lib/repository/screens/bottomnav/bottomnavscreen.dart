import 'package:flutter/material.dart';
import 'package:zoom_cart/repository/screens/cart/cart_screen.dart';
import 'package:zoom_cart/repository/screens/categories/categories_screen.dart';
import 'package:zoom_cart/repository/screens/home/home_screen.dart';
import 'package:zoom_cart/repository/screens/print/print_screen.dart';
import 'package:zoom_cart/repository/widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "home.png"),label: "home"),
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "shoppingbag.png"),label: "cart"),
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "categories.png"),label: "categories"),
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "printer.png"),label: "printer"),
      ],
      type: BottomNavigationBarType.fixed,currentIndex: currentIndex,onTap: (index){
        setState(() {
          currentIndex = index;
        });
      },
      ),
    );
  }
}