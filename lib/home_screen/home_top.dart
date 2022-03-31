import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penboutique/custom/borderbox.dart';
import 'package:penboutique/home_screen/product_section.dart';

class TopSectionHome extends StatelessWidget {
  TopSectionHome({Key? key}) : super(key: key);

  var scaffoldKey = GlobalKey<ScaffoldState>();
  /*TODO: color of the icon box and the background looks a bit weird and
     search bar as well need to fix the color*/
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
      ),
      body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:40),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BorderBox(
                            width: 50,
                            height: 50,
                            child: IconButton(
                              highlightColor: null,
                              icon: Icon(Icons.menu),
                              color: Colors.black,
                              onPressed: () =>
                                  Scaffold.of(context).openDrawer(),
                            ),
                          ),
                          const Text("Pen Boutique",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            )),
                          BorderBox(
                            width: 50,
                            height: 50,
                            child: IconButton(
                              highlightColor: null,
                              icon: Icon(Icons.shopping_bag),
                              color: Colors.black,
                              onPressed: () {
                                const snackBar = SnackBar(
                                    content: Text(
                                        "Not yet!"));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            ),
                          )
                        ],
                      )
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
                      width: double.infinity,
                      height: 40,
                      color:Colors.white60,
                        child: const Center(
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white60,
                                hintText: "Search",
                                suffixIcon: Icon(Icons.search)
                              )
                            ),
                          ),
                      ),
                    SizedBox(height: 40,),
                    Brand()
                    //TODO pixel overflow on the bottom...
                  ])],
          )),
    );
  }
}
