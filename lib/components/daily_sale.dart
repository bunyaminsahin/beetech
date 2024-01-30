import 'package:flutter/material.dart';

class DailySaleItem extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final String discountForEachItem;
  void Function()? onPressed;
  DailySaleItem({
    super.key,
    required this.imagePath,
    required this.itemName,
    required this.discountForEachItem,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
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
        const SizedBox(
          height: 16,
        ),
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
            mainAxisSize: MainAxisSize.min,
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
          height: 16,
        ),
      ],
    );
  }
}
