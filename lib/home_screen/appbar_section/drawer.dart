import 'package:flutter/material.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Text("Nothing to see here..."),
      ),
    );
  }
}
