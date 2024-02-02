import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HotSellingProductItem extends StatefulWidget {
  const HotSellingProductItem({
    super.key,
    required this.imagePath,
    required this.itemName,
    required this.itemPrice,
    required this.itemOldPrice,
    required this.itemDiscount,
    required this.ratio,
    required this.ratingCount,
  });

  final String imagePath;
  final String itemName;
  final double itemPrice;
  final double itemOldPrice;
  final double itemDiscount;
  final double ratio;
  final int ratingCount;

  @override
  State<HotSellingProductItem> createState() => _HotSellingProductItemState();
}

class _HotSellingProductItemState extends State<HotSellingProductItem> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 195,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: 148,
                  height: 104,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.imagePath),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ClipOval(
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: const Color(0xFFFFFFFF),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                favorite = !favorite;
                              });
                            },
                            child: SizedBox(
                              width: 16,
                              height: 16,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(favorite
                                    ? "assets/images/favorite.png"
                                    : "assets/images/notfavorite.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            /*  const SizedBox(height: 8), */
            SizedBox(
              width: 148,
              height: 36,
              child: Text(
                widget.itemName,
                style: const TextStyle(
                  color: Color(0xFF1F2937),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  //height: 0.12,
                ),
              ),
            ),
            const SizedBox(height: 13),
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "\$${widget.itemPrice}",
                  style: const TextStyle(
                    color: Color(0xFF1F2937),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                    letterSpacing: 0.07,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  "\$${widget.itemOldPrice}",
                  style: const TextStyle(
                    color: Color(0xFF9CA3AF),
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.lineThrough,
                    height: 0.18,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  "\$${widget.itemDiscount} % OFF",
                  style: const TextStyle(
                    color: Color(0xFFEA580C),
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  width: 16,
                  height: 16,
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/ratingIcon.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  widget.ratio.toString(),
                  style: const TextStyle(
                    color: Color(0xFF1F2937),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.18,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  "(${widget.ratingCount.toString()})",
                  style: const TextStyle(
                    color: Color(0xFF6B7280),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
