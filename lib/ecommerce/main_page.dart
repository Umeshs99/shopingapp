// import 'package:ecommerce/View/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';

import '../controller/homecontroller.dart';
// import '../../Controller/dashboard_controller.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              // const HomeScreen(),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.orange,
              )
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.deepPurple.shade400,
          buttonBackgroundColor: Colors.black87,
          height: 60,
          index: controller.tabIndex,
          onTap: (val) {
            controller.updateIndex(val);
          },
          items: const [
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.category, size: 30 , color: Colors.white),
            Icon(Icons.favorite_border_outlined, size: 30, color: Colors.white),
            Icon(Icons.account_circle, size: 30, color: Colors.white),
          ],
        ),
      ),
    );
  }
}