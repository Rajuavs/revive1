import 'package:flutter/material.dart';

Map getGridSize(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  int gs = 0;
  if (width > 0 && width <= 576) {
    gs = 1;
  } else if (width > 576 && width <= 768) {
    gs = 2;
  } else if (width > 768 && width <= 960) {
    gs = 3;
  } else if (width > 960 && width <= 1140) {
    gs = 4;
  } else if (width > 1140) {
    gs = 5;
  }
  double baseWidth = 1280.0;
  double fem = width / baseWidth;
  double ffem = (gs <= 2 ? (768 / baseWidth) : fem) * 0.97;
  double tLnHt = ffem / fem * (gs < 3 ? fem / ffem : 1);
  return {
    "gs": gs,
    "w": width,
    "bw": 1280.0,
    "fem": fem,
    "ffem": ffem,
    "tLnHt": tLnHt
  };
}
