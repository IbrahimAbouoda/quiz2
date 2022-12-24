import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.insights_rounded))
        ],
        title: Center(
          child: Text("Product Details"),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    color: Colors.blue,
                    child: Center(
                      child: Image.asset("assets/pinkcoff.png"),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Center(
                      child: Image.asset("assets/pinkcoff.png"),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Center(
                      child: Image.asset("assets/pinkcoff.png"),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Center(
                      child: Image.asset("assets/pinkcoff.png"),
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Text("slllllllllllll"),
              Text("280 KWD"),
              Container(),
              Text(
                  "ssssssssssssssssss\ncccccccccccccccccccccc\nccccccccccccsssss"),
            ],),

            MaterialButton(
              onPressed: () {},
              child: Text("Add to catd"),
            ),
          ],
        ),
      ),
    );
  }
}
