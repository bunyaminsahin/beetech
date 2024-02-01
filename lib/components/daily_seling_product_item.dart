import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DailySelingProductItem extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final String discountForEachItem;
  void Function()? onPressed;
  DailySelingProductItem({
    super.key,
    required this.imagePath,
    required this.itemName,
    required this.discountForEachItem,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          itemName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF1F2937),
            fontSize: 10,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0.15,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 78,
          height: 19,
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: ShapeDecoration(
            color: const Color(0xFFEF4444),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                discountForEachItem,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0.15,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
