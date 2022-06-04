import 'dart:ui';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key key}) : super(key: key);
  ScrollController _scrollController = ScrollController();
  final List<Container> myList = List.generate(90, (index) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 50,
      width: 150,
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Disc 40%",
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset(
              'assets/image2-1.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Adidas",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "\$1.2",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "\$1.0",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rating 4.5",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                    "assets/icon_love.png",
                    width: 15,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "List Product",
          ),
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 3,
        ),
        children: myList,
      ),
    );
  }
}
