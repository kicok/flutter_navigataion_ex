import 'package:flutter/material.dart';
import 'package:flutter_navigation_ex/main_draw.dart';

import 'bike/bike.dart';
import 'car/car.dart';
import 'train/train.dart';

class TransportationScreen extends StatefulWidget {
  const TransportationScreen({Key? key}) : super(key: key);

  @override
  _TransportationScreenState createState() => _TransportationScreenState();
}

class _TransportationScreenState extends State<TransportationScreen> {
  @override
  Widget build(BuildContext context) {
    // DefaultTabController로 Scaffold를 감싸준다.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const MainDrawer(),
        appBar: AppBar(
          title: const Text('Navigation Demo'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
                text: 'Train',
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: 'Bike',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Car(),
            Train(),
            Bike(),
          ],
        ),
      ),
    );
  }
}
