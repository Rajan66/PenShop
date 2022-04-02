import 'package:flutter/material.dart';
import 'package:penboutique/assets/constants.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
        child: SizedBox(
          height: 150,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index) => buildPopular(index),
          ),
        ),
      ),
    );
  }


  Widget buildPopular(int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container()
    );
  }
}

