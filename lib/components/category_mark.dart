import 'package:flutter/material.dart';

class MyCategoryMark extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int colorValue;
  final void Function()? onTap;
  const MyCategoryMark({
    super.key,
    required this.categoryName,
    required this.imagePath,
    required this.colorValue,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: ShapeDecoration(
              color: Color(colorValue),
              shape: const OvalBorder(),
            ),
            child: Center(
              child: SizedBox(
                width: 30,
                height: 24,
                child: Image.asset(imagePath),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            categoryName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF1F2937),
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          ),
        ],
      ),
    );
  }
}
