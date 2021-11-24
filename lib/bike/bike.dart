import 'package:flutter/material.dart';
import 'package:flutter_navigation_ex/bike/bike1.dart';
import 'package:flutter_navigation_ex/bike/bike2.dart';
import 'package:flutter_navigation_ex/bike/bike3.dart';
import 'package:flutter_navigation_ex/bike/bike4.dart';

class Bike extends StatefulWidget {
  const Bike({Key? key}) : super(key: key);

  @override
  _BikeState createState() => _BikeState();
}

class _BikeState extends State<Bike> {
  int _selectedIndex = 0;
  final List<Widget> _widget = const [Bike1(), Bike2(), Bike3(), Bike4()];
  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.filter_1),
            label: 'Bike1',
            backgroundColor: Colors.amber[100],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.filter_2),
            label: 'Bike2',
            backgroundColor: Colors.amber[200],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.filter_3),
            label: 'Bike3',
            backgroundColor: Colors.amber[300],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.filter_4),
            label: 'Bike4',
            backgroundColor: Colors.amber[400],
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
 
        // tab의 개수가 4개 이상일 때는 defaul로 BottomNavigationBarType.shifting가
        // 적용되므로 selectedItemColor, unselectedItemColor 를 사용해야 tab을 눈으로 볼수 있음
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Colors.amber[100],
        // backgroundColor 실행되지 않음 (tab 4개이상)
        // 그러므로 각 BottomNavigationBarItem 에 별도로 backgroundColor를 지정해야함
      ),
    );
  }
}
