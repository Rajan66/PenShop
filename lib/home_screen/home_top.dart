import 'package:flutter/material.dart';
import 'package:penboutique/custom/borderbox.dart';
import 'package:penboutique/home_screen/popular_section.dart';
import 'package:penboutique/home_screen/product_section.dart';

class TopSectionHome extends StatefulWidget {
  const TopSectionHome({Key? key}) : super(key: key);

  @override
  State<TopSectionHome> createState() => _TopSectionHomeState();
}

class _TopSectionHomeState extends State<TopSectionHome> {
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
      body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BorderBox(
                              width: 50,
                              height: 50,
                              child: IconButton(
                                highlightColor: Colors.white24,
                                splashColor: Colors.white24,
                                icon: const Icon(Icons.menu),
                                color: Colors.black,
                                onPressed: () =>
                                    Scaffold.of(context).openDrawer(),
                              ),
                            ),
                            const Text("Pen Boutique",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                            BorderBox(
                              width: 50,
                              height: 50,
                              child: IconButton(
                                highlightColor: Colors.white24,
                                splashColor: Colors.white24,
                                icon: const  Icon(Icons.shopping_bag),
                                color: Colors.black,
                                onPressed: () {
                                  const snackBar =
                                      SnackBar(content: Text("Not yet!"));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: double.infinity,
                      height: 40,
                      color: Colors.white60,
                      child: const Center(
                        child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.white60,
                                hintText: "Search",
                                //TODO: Make this float and smaller font size i guess
                                suffixIcon: Icon(Icons.search))),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Brand(),
                    const SizedBox(height: 40),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Best Sellers",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Popular(),
                  ])
            ],
          )),
    );
  }
}
