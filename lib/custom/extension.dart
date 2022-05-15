import 'package:flutter/material.dart';

extension border on Widget {
  Container addBorder({
    Key? key,
    EdgeInsets? margin,
    double width = 50.0,
    double height = 50.0,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
        border: Border.all(color: Colors.grey.withAlpha(40), width: 2),
      ),
      margin: margin ?? const EdgeInsets.all(0.0),
      child: Center(child: this),
    );
  }
}
