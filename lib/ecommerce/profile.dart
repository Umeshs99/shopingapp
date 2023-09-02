import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'home.dart';
import 'mydrawer.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 38.0),
            child: Text('Wearing Clothes'),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: IndexedStack(
        index: currentIndex,
        children: [
          Home(),
          CategoryScreen(),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.grey,
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.brown.shade300,
        backgroundColor: Colors.tealAccent.shade200,
        items: [
          Icon(Icons.home_outlined, color: Colors.black, size: 30),
          Icon(Icons.scatter_plot_outlined, color: Colors.black,size: 30),
          Icon(Icons.favorite_border_outlined, color: Colors.black,size: 30),
          Icon(Icons.person_outline_outlined, color: Colors.black,size: 30),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
