import 'package:flutter/material.dart';
import 'package:quiz2/product.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Color background1 = Colors.white;
  Color background2 = Colors.white;

  List<String> tex1 = [
    "Business mangement",
    "project mangment",
    "Diploma Of ItNetwork",
    "Sicnce Fiction.Fact Network",
    "Business Mangment",
    "Project Mangement"
  ];
  List<String> tex2 = [
    "By Betty R.Roerts",
    "By Juana K.Powell",
    "Gilberlo S.Osborne",
    "Gilberlo S.Osborne",
    "By Betty R.Roerts",
    "By Juana K.Powell"
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Course"),
          ),
        ),
        drawer: Drawer(),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 0.5)
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: background1),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                background1 = Colors.grey;
                              });
                            },
                            child: Text(
                              "ALL COURCE",
                              style: TextStyle(
                                  color: Colors.amber,
                                  backgroundColor: background1),
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: background2,
                        ),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                background2 = Colors.grey;
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Product()));
                              });
                            },
                            child: Text(
                              "MY Course",
                              style: TextStyle(
                                  color: Colors.amber,
                                  backgroundColor: background2),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                width: double.infinity,
                child: ListView.builder(itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                          child: Row(
                            children: [
                              Image(
                                  height: 100,
                                  width: 100,
                                  image: AssetImage(image[index])),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(tex1[index]),
                                  Text(tex2[index]),
                                  Text(tex3[index])
                                ],
                              )
                            ],
                          ));
                    }),
              ),
            ])));
  }
}
