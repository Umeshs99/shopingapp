
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('E-commerce App')),
        body: HomeScreen(),
        drawer: SideBar(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Main Content'),
    );
  }
}

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('E-commerce Menu'),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to HomeScreen or perform actions
            },
          ),
          ListTile(
            title: Text('Products'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to ProductsScreen or perform actions
            },
          ),
          ListTile(
            title: Text('Cart'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to CartScreen or perform actions
            },
          ),
          // Add more list tiles for other menu options
        ],
      ),
    );
  }
}