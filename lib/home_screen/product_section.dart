import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penboutique/assets/constants.dart';
import 'package:penboutique/custom/borderbox.dart';

class Brand extends StatefulWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  _BrandState createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  List<String> brand = [
    "Visconti",
    "Aurora",
    "Bosca",
    "Cross",
    "Bross",
    "Gross",
    "Lross",
    "Mross"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 90,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: brand.length,
            itemBuilder: (context, index) => buildBrand(index),
          ),
    );
  }

  Widget buildBrand(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: BorderBox(
            height: 50,
            width: 90,
            padding: const EdgeInsets.all(kBoxPadding),
            child: Column(
              children: [
                Column(
                  children: [
                    Image(
                      image: kLogo,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 10),
                    Text(brand[index],
                        style: TextStyle(
                          fontSize: 10,
                        ))
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
