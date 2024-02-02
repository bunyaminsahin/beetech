import 'package:beetech_app/components/category_mark.dart';
import 'package:flutter/cupertino.dart';

class RowForCategories extends StatelessWidget {
  const RowForCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          height: 86,
          child: Row(
            children: [
              MyCategoryMark(
                categoryName: "Fashion",
                imagePath: "assets/images/fashion.png",
                colorValue: 0xFFECFDF5,
              ),
              SizedBox(
                width: 28,
              ),
              MyCategoryMark(
                categoryName: "Electronics",
                imagePath: "assets/images/electronics.png",
                colorValue: 0xFFFFF7ED,
              ),
              SizedBox(
                width: 28,
              ),
              MyCategoryMark(
                categoryName: "Appliances",
                imagePath: "assets/images/appliances.png",
                colorValue: 0xFFECFDF5,
              ),
              SizedBox(
                width: 28,
              ),
              MyCategoryMark(
                categoryName: "Beauty",
                imagePath: "assets/images/beauty.png",
                colorValue: 0xFFECFEFF,
              ),
              SizedBox(
                width: 28,
              ),
              MyCategoryMark(
                categoryName: "Furniture",
                imagePath: "assets/images/furniture.png",
                colorValue: 0xFFEFF6FF,
              ),
              SizedBox(
                width: 28,
              ),
              MyCategoryMark(
                categoryName: "Fashion",
                imagePath: "assets/images/fashion.png",
                colorValue: 0xFFECFDF5,
              ),
              SizedBox(
                width: 28,
              ),
              MyCategoryMark(
                categoryName: "Electronics",
                imagePath: "assets/images/electronics.png",
                colorValue: 0xFFFFF7ED,
              ),
              SizedBox(
                width: 28,
              ),
              MyCategoryMark(
                categoryName: "Appliances",
                imagePath: "assets/images/appliances.png",
                colorValue: 0xFFECFDF5,
              ),
              SizedBox(
                width: 28,
              ),
              MyCategoryMark(
                categoryName: "Beauty",
                imagePath: "assets/images/beauty.png",
                colorValue: 0xFFECFEFF,
              ),
              SizedBox(
                width: 28,
              ),
              MyCategoryMark(
                categoryName: "Furniture",
                imagePath: "assets/images/furniture.png",
                colorValue: 0xFFEFF6FF,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
