import 'package:flutter/material.dart';

class AssetsManager {
  List<Widget> bannersImagesPathAsWidget = [
    Image.asset("assets/images/banner1.png"),
    Image.asset("assets/images/banner2.png"),
    Image.asset("assets/images/banner3.png"),
  ];
  static String bannerImagesPath = "assets/images";
  static String banner1 = "assets/images/banner1.png";
  static String banner2 = "assets/images/banner2.png";
  static String banner3 = "assets/images/banner3.png";

  static List<String> bannersImages = [
    AssetsManager.banner1,
    AssetsManager.banner2,
    AssetsManager.banner3,
  ];
}
