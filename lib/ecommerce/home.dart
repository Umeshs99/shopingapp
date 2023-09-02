import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CarouselController _carouselController = CarouselController();
  final List<String> imageUrls = [
    'assets/image/outlook.jpg',
    'assets/image/beachShirt.jpg',
    'assets/image/jeans.jpg',
    'assets/image/IMG_umesh.jpg',
    'assets/image/weddingsuit.jpg',
    'assets/image/menshirt.jpg',
    'assets/image/shirt.jpg',
    'assets/image/jeans1.jpg',
  ];
  int _currentIndex = 0;
  late final void Function(Widget card) addToFavorites;
  late final void Function(Widget card) removeFromFavorites;

  // Home({required this.addToFavorites, required this.removeFromFavorites});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
      children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Container(
                  height: 35,
                  width: 300,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                      prefixIcon: Icon(Icons.search, color: Colors.black45),
                      hintText: 'Search Wearing Cloth',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CarouselSlider(
                        carouselController: _carouselController,
                        options: CarouselOptions(
                          height: 200,
                          scrollDirection: Axis.horizontal,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(seconds: 2),
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                        items: imageUrls.map((imageUrl) {
                          return Container(
                            // margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 10.0), // Gap of 10mm (millimeters)
                      DotsIndicator(
                        dotsCount: imageUrls.length,
                        position: _currentIndex,
                        decorator: DotsDecorator(
                          color: Colors.grey,
                          activeColor: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 162.0,left: 12),
                      child: Text("Shirts Price\nRs 1200"
                          ,style: TextStyle(fontSize: 18,color: Colors.redAccent,fontWeight: FontWeight.w800)),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/image/shirts.jpg'))
                    ),
                  ),
                  // shadowColor: Colors.amber,
                  // shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                Card(
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 162.0,left: 12),
                      child: Text("T-Shirt Price\nRs 400"
                          ,style: TextStyle(fontSize: 18,color: Colors.redAccent,fontWeight: FontWeight.w800)),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/tshirt.jpg'))
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 162.0,left: 12),
                      child: Text("Buy One Get One\nRs 800"
                          ,style: TextStyle(fontSize: 18,color: Colors.redAccent,fontWeight: FontWeight.w800)),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/outlook.jpg'))
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 200,
                    width: 300,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 162.0,left: 12),
                       child: Text("Full Set Price\nRs 2000"
                           ,style: TextStyle(fontSize: 18,color: Colors.redAccent,fontWeight: FontWeight.w800)),
                     ),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/pant.jpg'))
                    ),
                  ),
                ),
              ],
            ),
          ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                child: Container(
                  height: 200,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 162.0,left: 12),
                    child: Text("Stylish Fit\nRs 3600"
                        ,style: TextStyle(fontSize: 18,color: Colors.redAccent,fontWeight: FontWeight.w800)),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/image/superjeans.jpg'))
                  ),
                ),
                // shadowColor: Colors.amber,
                // shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 162.0,left: 12),
                    child: Text("Ancle Fit Jeans\nRs 900"
                        ,style: TextStyle(fontSize: 18,color: Colors.redAccent,fontWeight: FontWeight.w800)),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/image/setjeans.jpg'))
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 162.0,left: 12),
                    child: Text("Denim Faded\nRs 1600"
                        ,style: TextStyle(fontSize: 18,color: Colors.redAccent,fontWeight: FontWeight.w800)),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/image/jeansbuy.jpg'))
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 162.0,left: 12),
                    child: Text("Denim jeans\nRs 2500"
                        ,style: TextStyle(fontSize: 18,color: Colors.redAccent,fontWeight: FontWeight.w800)),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/image/betterjeans.jpg'))
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 40,)
      ],
    ),
        )
    );
  }
}
