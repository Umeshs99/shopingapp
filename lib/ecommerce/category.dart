
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(width: 0.14)),
      //   shadowColor: Colors.redAccent,
      //   backgroundColor: Colors.grey.shade500,
      //   title: Center(child: Text('Category')),
      // ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              height: 35,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                  prefixIcon: Icon(Icons.search,color: Colors.black),
                  hintText: 'Search By Category',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0.15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.5,color: Colors.black45)
                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Card(
                  child: GestureDetector(
                    // onTap: () => ,

                    child: Container(
                      height: 200,
                      width: 150,
                    // margin: EdgeInsets.only(bottom: 40),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/image/shirt.jpg'))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 180.0,left: 12),
                        child: Text('Fashion', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,)),
                      ),

                    ),
                  ),
                ),
                 SizedBox(width: 20,),
                Card(
                  child: Container(
                    height: 200,
                    width: 150,
                    // margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/beachShirt.jpg'))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 180.0,left: 12),
                      child: Text('Winter Collections', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Card(
                  child: Container(
                    height: 200,
                    width: 150,
                    // margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/shirt.jpg'))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 180.0,left: 12),
                      child: Text('KIDs Wearings', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,)),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Card(
                  child: Container(
                    height: 200,
                    width: 150,
                    // margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/beachShirt.jpg'))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 180.0,left: 12),
                      child: Text('Mens Breands', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Card(
                  child: Container(
                    height: 200,
                    width: 150,
                    // margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/shirt.jpg'))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 180.0,left: 12),
                      child: Text('Wedding Wearings', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,)),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Card(
                  child: Container(
                    height: 200,
                    width: 150,
                    // margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/beachShirt.jpg'))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 180.0,left: 12),
                      child: Text('Womens Stylish', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Card(
                  child: Container(
                    height: 200,
                    width: 150,
                    // margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/shirt.jpg'))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 180.0,left: 12),
                      child: Text('Nike Brands', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,)),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Card(
                  child: Container(
                    height: 200,
                    width: 150,
                    // margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/beachShirt.jpg'))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 180.0,left: 12),
                      child: Text('Adidas', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
