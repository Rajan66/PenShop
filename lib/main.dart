import 'package:flutter/material.dart';
import 'package:penboutique/home_screen/home_top.dart';

import 'custom/borderbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TopSectionHome(),
  );
}
