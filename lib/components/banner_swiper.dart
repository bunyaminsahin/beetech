import 'package:beetech_app/components/category_mark.dart';
import 'package:beetech_app/utils/assets_manager.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySwiperForBanner extends StatelessWidget {
  const MySwiperForBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.22,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            AssetsManager.bannersImages[index],
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        itemCount: AssetsManager.bannersImages.length,
        pagination: const SwiperPagination(
          builder: DotSwiperPaginationBuilder(
              color: Colors.white, activeColor: Colors.blue),
        ),
      ),
    );
  }
}
