import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'All about transportation & food',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
              leading: const Icon(Icons.directions_car),
              title: const Text('transportation'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/transportation');
              }),
          ListTile(
            leading: const Icon(Icons.fastfood),
            title: const Text('Food'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/food');
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);

              // pushReplacementNamed를 사용하면 로그아웃이후 로그인 페이지로 이동후 back버튼이 보이는 현상이 발생 (이유를 모르겠음)
              // Navigator.of(context).pushReplacementNamed('/login');
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/login', (route) => false);
              // 반드시 (route) => false 를 해야 back버튼이 보이지 않음
            },
          ),
        ],
      ),
    );
  }
}
