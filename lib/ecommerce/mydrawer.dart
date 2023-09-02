import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

import '../login_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  moveOn(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
    MotionToast(
      description: Text('Log_Out Successfully'),
      primaryColor: Colors.green,
      width: 500,
      height: 100,
    ).show(context);
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightGreen.shade100,
     child: ListView(
       padding: EdgeInsets.zero,
       children: [
         DrawerHeader(
           padding: EdgeInsets.zero,
             child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.brown.shade100),
               margin: EdgeInsets.zero,
           accountName: Text('Umesh S'),
           accountEmail: Text('umeshs9925@gmail.com'),
           currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/image/umesh.jpg')),)),

         ListTile(
           leading: Icon(Icons.home),
           title: Text('Home',style: TextStyle(fontSize: 18),),
           trailing: Icon(Icons.chevron_right),
           hoverColor: Colors.brown,
           splashColor: Colors.brown,
         ),
         ListTile(
           leading: Icon(Icons.scatter_plot_outlined),
           title: Text('Categories',style: TextStyle(fontSize: 18)),
           trailing: Icon(Icons.chevron_right),
         ),
         ListTile(
           leading: Icon(Icons.favorite_border_outlined),
           title: Text('Favorite',style: TextStyle(fontSize: 18)),
           trailing: Icon(Icons.chevron_right),
         ),
         ListTile(
           leading: Icon(Icons.share),
           title: Text('Share',style: TextStyle(fontSize: 18)),
           trailing: Icon(Icons.chevron_right),
         ),
         ListTile(
           leading: Icon(Icons.settings),
           title: Text('Setting',style: TextStyle(fontSize: 18)),
           trailing: Icon(Icons.chevron_right),
         ),
         ListTile(
           leading: Icon(Icons.logout),
           title: Text('LogOut',style: TextStyle(fontSize: 18)),
           onTap:() => moveOn(context),

           // trailing: Icon(Icons.chevron_right),
         ),

       ],
     ),
    );
  }
}
