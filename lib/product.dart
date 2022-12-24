import 'package:flutter/material.dart';
import 'package:quiz2/data.dart';
import 'package:quiz2/product_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

late Data data;

class _ProductState extends State<Product> {
  List<String> tex1 = [
    "The Earth ceramic coffee mug",
    "Numeric Flasherd For Kids",
    "Short Love Stories",
    "Time Mangement",
    "Pink Coffee mug",
    "kids bed time  stories",
    "Short Love Stories",
    "Time Mangement",
    "Pink Coffee mug",
  ];

  List<String> tex3 = ["14", "16", "27", "16", "14", "16"];
  List<String> image = [
    "assets/busin2.jpg",
    "assets/busin2.jpg",
    "assets/net.jpg",
    "assets/netw.jpg",
    "assets/project.jpg",
    "assets/project.jpg",
  ];

  savePref(key, value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(key, value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Product"),
        ),
      ),
      drawer: Drawer(),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            SizedBox(
              height: 500,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                        child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                            onTap: () {
                              setState(()async {
                                await savePref("titel", tex1[index]);

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ProductDetails(),
                                  ),
                                );

                              });
                            },
                            child: Image(
                                height: 100,
                                width: 100,
                                image: AssetImage(image[index])),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tex1[index]),
                            Text("280 KWD"),
                          ],
                        )
                      ],
                    ));
                  }),
            ),
          ])),
    );
  }
}
