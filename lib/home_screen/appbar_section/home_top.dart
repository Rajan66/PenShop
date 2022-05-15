import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penboutique/custom/borderbox.dart';
import 'package:penboutique/home_screen/appbar_section/drawer.dart';
import '../new_arrival_section.dart';
import '../popular_section.dart';
import '../product_section.dart';

class TopSectionHome extends StatefulWidget {
  const TopSectionHome({Key? key}) : super(key: key);

  @override
  State<TopSectionHome> createState() => _TopSectionHomeState();
}

class _TopSectionHomeState extends State<TopSectionHome> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width *
            0.75, // 75% of screen will be occupied
        child: DrawerSection(),
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
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderBox(
                        height: 50,
                        width: 50,
                        margin: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                        child: IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            scaffoldKey.currentState?.openDrawer();
                          },
                          highlightColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          splashColor:
                              Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      const SizedBox(
                        child: Text(
                          "Pen Boutique",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      BorderBox(
                        height: 50,
                        width: 50,
                        margin: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                        child: IconButton(
                          icon: const Icon(Icons.shopping_cart),
                          onPressed: () {
                            const snackBar =
                                SnackBar(content: Text("Not yet!"));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          highlightColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          splashColor:
                              Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  //Custom Search Delegate
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  width: double.infinity,
                  height: 40,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white60,
                        hintText: "Search",
                        //TODO: Make this float and smaller font size i guess
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(15.0),
                    children: const [
                      SizedBox(height: 40),
                      Brand(),
                      SizedBox(height: 40),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Best Sellers",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Popular(),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "New Arrivals",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      NewArrival(),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            elevation: 5,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.blueAccent,
            unselectedIconTheme: const IconThemeData(color: Colors.black),
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person_rounded),
              ),
              BottomNavigationBarItem(
                label: "Settings",
                icon: Icon(Icons.settings),
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          )),
    );
  }
}
