// ignore_for_file: file_names, prefer_const_constructors, unused_import, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sample_app_1/Catalog_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Art", style: mainTextStyle()),
                Text("Old", style: mainTextStyle()),
                Text("Vintage", style: mainTextStyle()),
                Text("Youth", style: mainTextStyle()),
                Text("Black and white", style: mainTextStyle()),
                Text("Culture", style: mainTextStyle())
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.home_outlined,
                          color: Colors.white, size: 13.0),
                      label: Text("Home", style: mainTextStyle2())),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.photo_library,
                          color: Colors.white, size: 13.0),
                      label: Text("Gallery", style: mainTextStyle2())),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.call_outlined,
                          color: Colors.white, size: 13.0),
                      label: Text("Contacts", style: mainTextStyle2())),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu, color: Colors.white, size: 13))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 250,
                      width: 270,
                      child: Column(
                        children: [
                          textDetails(),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Get access to more than 1 million vintage shots from all over the world with just one click. Register to get unlimited access.",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => CatalogPage()));
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black,
                                              style: BorderStyle.solid)),
                                      width: 65,
                                      height: 30,
                                    ),
                                    Positioned(
                                      left: 5,
                                      bottom: 5,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 70,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                        ),
                                        child: Center(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.arrow_forward,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                              Text(
                                                "Start Now",
                                                style: mainTextStyle2(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.topLeft, child: imageDetails()),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

TextStyle mainTextStyle() {
  return TextStyle(fontWeight: FontWeight.bold, color: Colors.black);
}

TextStyle mainTextStyle2() {
  return TextStyle(
      fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10);
}

Stack imageDetails() {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, style: BorderStyle.solid)),
        width: 160,
        height: 260,
      ),
      Container(
        width: 170,
        height: 270,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, style: BorderStyle.solid),
            image: DecorationImage(
                image: AssetImage("lib/images/1.jpg"), fit: BoxFit.cover)),
      ),
    ],
  );
}

RichText textDetails() {
  return RichText(
    text: TextSpan(
      text: 'Old but Gold, Captured',
      style: TextStyle(
          fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
    ),
  );
}
