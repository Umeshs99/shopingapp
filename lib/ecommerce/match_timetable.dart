import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 1',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 80,
            left: 20,
            width: 100,
            height: 50,
            child: Container(
              // width: 100,
              // height: 100,
              child: Center(child: Text('Team 2',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 140,
            left: 20,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 3',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 200,
            left: 20,
            width: 100,
            height: 50,
            child: Container(
              // width: 100,
              // height: 100,
              child: Center(child: Text('Team 4',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 370,
            left: 20,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 5',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 430,
            left: 20,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 6',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 490,
            left: 20,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 7',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 550,
            left: 20,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 8',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 40,
            left: 160,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 2',style: TextStyle(color: Colors.black45))),
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 180,
            left: 160,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 4',style: TextStyle(color: Colors.black45))),
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 110,
            left: 300,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 4',style: TextStyle(color: Colors.black45))),
              color: Colors.blue.shade200,
            ),
          ),
          Positioned(
            top: 400,
            left: 160,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 5',style: TextStyle(color: Colors.black45))),
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 550,
            left: 160,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 7',style: TextStyle(color: Colors.black45))),
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 470,
            left: 300,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 7',style: TextStyle(color: Colors.black45))),
              color: Colors.blue.shade200,
            ),
          ),
          Positioned(
            top: 300,
            left: 410,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 4',style: TextStyle(color: Colors.black45))),
              color: Colors.brown,
            ),
          ),
          Positioned(
            top: 250,
            left: 530,
            width: 100,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text('FINAL',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w800,fontSize: 20)),
            ),
            ),
          Positioned(
            top: 280,
            left: 530,
            width: 100,
            height: 100,
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image/best.jpg'))),
            ),
          ),
          Positioned(
            top: 400,
            left: 530,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Champion',style: TextStyle(color: Colors.black45))),
              color: Colors.pink.shade200,
            ),
          ),
          Positioned(
            top: 300,
            left: 655,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 12',style: TextStyle(color: Colors.black45))),
              color: Colors.brown,
            ),
          ),
          Positioned(
            top: 115,
            left: 750,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 12',style: TextStyle(color: Colors.black45))),
              color: Colors.blue.shade200,
            ),
          ),
          Positioned(
            top: 470,
            left: 750,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 16',style: TextStyle(color: Colors.black45))),
              color: Colors.blue.shade200,
            ),
          ),
          Positioned(
            top: 40,
            left: 880,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 10',style: TextStyle(color: Colors.black45))),
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 180,
            left: 880,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 12',style: TextStyle(color: Colors.black45))),
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 400,
            left: 880,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 16',style: TextStyle(color: Colors.black45))),
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 540,
            left: 880,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 14',style: TextStyle(color: Colors.black45))),
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 20,
            left: 1030,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 9',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 80,
            left: 1030,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 10',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 140,
            left: 1030,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 11',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 200,
            left: 1030,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 12',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 380,
            left: 1030,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 13',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 440,
            left: 1030,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 14',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 500,
            left: 1030,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 15',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 560,
            left: 1030,
            width: 100,
            height: 50,
            child: Container(
              child: Center(child: Text('Team 16',style: TextStyle(color: Colors.black45))),
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
