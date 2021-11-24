import 'package:flutter/material.dart';
import 'package:flutter_navigation_ex/car/car1.dart';
import 'package:flutter_navigation_ex/car/car2.dart';
import 'package:flutter_navigation_ex/car/car3.dart';

class Car extends StatefulWidget {
  const Car({Key? key}) : super(key: key);

  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  int _selectedIndex = 0;
  final List<Widget> _widgets = const [Car1(), Car2(), Car3()];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    //bottomNavigationBar는 Scaffold 의 property 이므로 Scaffold 를 생성해야 함
    return Scaffold(
      body: _widgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_1),
            label: 'Car 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            label: 'Car 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_3),
            label: 'Car 3',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
