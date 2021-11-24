import 'package:flutter/material.dart';
import 'package:flutter_navigation_ex/bike/bike.dart';
import 'package:flutter_navigation_ex/car/car.dart';
import 'package:flutter_navigation_ex/train/train.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // colorScheme: ColorScheme.fromSwatch().copyWith(
        //   secondary: Colors.teal,
        // ),
      ),
      home: const TransportationScreen(),
    );
  }
}

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
        body: const TabBarView(children: [
          Car(),
          Train(),
          Bike(),
        ]),
      ),
    );
  }
}
