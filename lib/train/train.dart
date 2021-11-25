import 'package:flutter/material.dart';
import 'package:flutter_navigation_ex/train/train1.dart';
import 'package:flutter_navigation_ex/train/train2.dart';
import 'package:flutter_navigation_ex/train/train3.dart';

class Train extends StatefulWidget {
  const Train({Key? key}) : super(key: key);

  @override
  _TrainState createState() => _TrainState();
}

class _TrainState extends State<Train> {
  int _selectedIndex = 0;
  final List<Widget> _widget = const [Train1(), Train2(), Train3()];
  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.filter_1), label: 'Bike1'),
          BottomNavigationBarItem(icon: Icon(Icons.filter_2), label: 'Bike2'),
          BottomNavigationBarItem(icon: Icon(Icons.filter_3), label: 'Bike3'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
