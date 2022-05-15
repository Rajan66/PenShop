import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double width, height;

  const BorderBox(
      {Key? key,
      required this.child,
      this.padding,
        this.margin,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            border: Border.all(color: Colors.grey.withAlpha(40), width: 2)),
        padding: padding ?? const EdgeInsets.all(0.0),
        margin: margin ?? const EdgeInsets.all(0.0),
        child: Center(child: child));
  }
}
