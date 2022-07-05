// ignore_for_file: prefer_const_constructors, camel_case_types, file_names, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sample_app_1/Homepage.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white54,
        body: ListView(
          children: [
            Padding(
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
                            onPressed: () {
                              Navigator.of(context).pop(MaterialPageRoute(
                                  builder: (context) => HomePage()));
                            },
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
                            icon:
                                Icon(Icons.menu, color: Colors.white, size: 13))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your Dream, Our Gallery.",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 75,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              color: Colors.grey.shade500,
                              style: BorderStyle.solid)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "'Photography for me is not looking, it's feeling. If you can't feel what you're looking at, then you're never going to get others to feel anything when they look at your pictures.' -  Don McCullin.",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      imagePoster(image: "lib/images/2.jpg"),
                      imagePoster(image: "lib/images/3.jpg"),
                      imagePoster(image: "lib/images/4.jpg")
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      imagePoster(image: "lib/images/5.jpg"),
                      imagePoster(image: "lib/images/6.jpg"),
                      imagePoster(image: "lib/images/1.jpg")
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Footer(),
          ],
        ));
  }
}

Stack Footer() {
  return Stack(
    children: [
      Container(
        height: 115,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36), topRight: Radius.circular(36))),
      ),
      Positioned(
        left: 35,
        top: 25,
        child: SizedBox(
            width: 105,
            height: 35,
            child: Text(
              "Get access to discounts and other offers when you join our community.",
              style: mainTextStyle2(),
            )),
      ),
      Positioned(
        left: 35,
        bottom: 25,
        child: Container(
          alignment: Alignment.center,
          height: 20,
          width: 300,
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(color: Colors.white,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(offset: Offset(0, 5), color: Colors.black)
              ]),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email Address",
                      hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.3), fontSize: 15)),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              TextButton.icon(
                  label: Text(
                    "Subscribe",
                    style: mainTextStyle(),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.black,
                    size: 15,
                  ))
            ],
          ),
        ),
      ),
    ],
  );
}

class imagePoster extends StatelessWidget {
  final String image;
  const imagePoster({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black, style: BorderStyle.solid)),
              width: 100,
              height: 150,
            ),
            Positioned(
              left: 5,
              bottom: 5,
              child: Container(
                width: 130,
                height: 180,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text("Lorem Ipsum", style: mainTextStyle()),
        Text("\$100"),
        SizedBox(
          height: 3,
        ),
        TextButton(
          onPressed: () {},
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid)),
                width: 40,
                height: 15,
              ),
              Positioned(
                left: 2,
                bottom: 2,
                child: Container(
                  width: 55,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.white,
                          size: 12,
                        ),
                        Text(
                          "Buy Now",
                          style: mainTextStyle2(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
