import 'package:flutter/material.dart';
import 'package:flutter_navigation_ex/main_draw.dart';

import 'pizza/pizza.dart';
import 'burger/burger.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    // DefaultTabController로 Scaffold를 감싸준다.
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Demo'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.fastfood),
                text: 'Hamburger',
              ),
              Tab(
                icon: Icon(Icons.local_pizza),
                text: 'Pizza',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Burger(),
            Pizza(),
          ],
        ),
        drawer: const MainDrawer(),
      ),
    );
  }
}
