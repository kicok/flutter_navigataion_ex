import 'package:flutter/material.dart';
import 'package:flutter_navigation_ex/transportation_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon((Icons.vpn_key)),
          label: const Text(
            'Login',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/transportation');
          },
        ),
      ),
    );
  }
}
