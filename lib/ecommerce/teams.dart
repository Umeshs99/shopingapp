import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('IPL Playoff Table'),
        ),
        body: PlayoffTable(),
      ),
    );
  }
}

class PlayoffTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Teams
        Positioned(
          top: 20,
          left: 20,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 1', style: TextStyle(color: Colors.black45))),
            color: Colors.purple,
          ),
        ),
        Positioned(
          top: 80,
          left: 20,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 2', style: TextStyle(color: Colors.black45))),
            color: Colors.purple,
          ),
        ),
        Positioned(
          top: 140,
          left: 20,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 3', style: TextStyle(color: Colors.black45))),
            color: Colors.purple,
          ),
        ),
        Positioned(
          top: 200,
          left: 20,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 4', style: TextStyle(color: Colors.black45))),
            color: Colors.purple,
          ),
        ),
        Positioned(
          top: 370,
          left: 20,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 5', style: TextStyle(color: Colors.black45))),
            color: Colors.purple,
          ),
        ),
        Positioned(
          top: 430,
          left: 20,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 6', style: TextStyle(color: Colors.black45))),
            color: Colors.purple,
          ),
        ),
        Positioned(
          top: 490,
          left: 20,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 7', style: TextStyle(color: Colors.black45))),
            color: Colors.purple,
          ),
        ),
        Positioned(
          top: 550,
          left: 20,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 8', style: TextStyle(color: Colors.black45))),
            color: Colors.purple,
          ),
        ),
        Positioned(
          top: 40,
          left: 160,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 2', style: TextStyle(color: Colors.black45))),
            color: Colors.grey,
          ),
        ),
        Positioned(
          top: 180,
          left: 160,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 4', style: TextStyle(color: Colors.black45))),
            color: Colors.grey,
          ),
        ),
        Positioned(
          top: 110,
          left: 300,
          width: 100,
          height: 50,
          child: Container(
            child: Center(child: Text('Team 4', style: TextStyle(color: Colors.black45))),
            color: Colors.blue.shade200,
          ),
        ),

        // Lines connecting teams
        CustomPaint(
          painter: LinePainter(
            start: Offset(70, 105), // Team 2
            end: Offset(70, 165),   // Team 4
          ),
        ),
        CustomPaint(
          painter: LinePainter(
            start: Offset(170, 105), // Team 4
            end: Offset(170, 165),   // Team 6
          ),
        ),
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  final Offset start;
  final Offset end;

  LinePainter({required this.start, required this.end});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


