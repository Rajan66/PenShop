import 'package:flutter/material.dart';
import 'package:penboutique/assets/constants.dart';
import 'package:penboutique/custom/borderbox.dart';

class NewArrival extends StatefulWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  _NewArrival createState() => _NewArrival();
}

class _NewArrival extends State<NewArrival> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => buildPopular(index)));
  }

  Widget buildPopular(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: BorderBox(
            height: 80,
            width: 180,
            padding: const EdgeInsets.all(kBoxPadding),
            child: Column(
              children: [
                Image(image: kLogo, fit: BoxFit.fill),
                SizedBox(height: 35),
                Text("A new nice pen"),
                SizedBox(height: 6),
                Text("900\$"),
              ],
            ),
          ),
        ));
  }
}
