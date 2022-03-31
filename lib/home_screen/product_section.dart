import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:penboutique/assets/constants.dart';
import 'package:penboutique/custom/borderbox.dart';

class Brand extends StatefulWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  _BrandState createState() => _BrandState();
}

class _BrandState extends State<Brand> {

  List<String> brand =[
    "Visconti",
    "Aurora",
    "Bosca",
    "Cross"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
          child: SizedBox(
            height: 25,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: brand.length,
              itemBuilder: (context, index) => buildCategory(index),)
          ),
        )
      ]
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BorderBox(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(kBoxPadding),
              child: Column(
                children: [
                  Image(image: kLogo,
                    fit: BoxFit.contain,),
                  Text(
                    brand[index],
                    style: TextStyle(
                      fontSize:10,
                    )
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4), //top padding 5
              height: 2,
              width: 30,
              color:
              selectedIndex == index ? Colors.black87 : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}

