import 'package:beetech_app/components/banner_swiper.dart';
import 'package:beetech_app/components/category_mark.dart';
import 'package:beetech_app/components/count_down_timer.dart';
import 'package:beetech_app/components/daily_sale.dart';

import 'package:beetech_app/components/row_for_categorie.dart';
import 'package:beetech_app/utils/assets_manager.dart';
import 'package:beetech_app/utils/my_drawer.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final List dailySaleItemList = [
  [
    "assets/images/nikeshoes.png",
    "Running Shoes",
    "Upto 40% OFF",
  ],
  [
    "assets/images/sneakrsshoes.png",
    "Sneakers",
    "40-60% OFF",
  ],
  [
    "assets/images/watch.png",
    "Wrist Watches",
    "Upto 40% OFF",
  ],
  [
    "assets/images/speaker.png",
    "Bluetooth Speakers",
    "40-60% OFF",
  ],
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        /* leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ), */
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/notification.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/bag.png"),
          ),
        ],
        title: const Text(
          'Home',
          style: TextStyle(
            color: Color(0xFF1F2937),
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0.07,
            letterSpacing: 0.10,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Search Anything...",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    borderSide: BorderSide(
                      color: Color(0xFF9CA3AF),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(
                    color: Color(0xFF1F2937),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                    letterSpacing: 0.07,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'View All ->',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const RowForCategories(),
          const SizedBox(
            height: 10,
          ),
          const MySwiperForBanner(),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 540,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.47, -0.88),
                end: Alignment(-0.47, 0.88),
                colors: [Color(0xFFFDFBFB), Color(0xFFEBEDEE)],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Text(
                        'Deal of the day',
                        style: TextStyle(
                          color: Color(0xFF1F2937),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0.11,
                          letterSpacing: 0.07,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'View All ->',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        child: CupertinoPageScaffold(
                          backgroundColor: const Color(0xFFEF4444),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: TimerCountdown(
                              colonsTextStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              descriptionTextStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              timeTextStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              format: CountDownTimerFormat.hoursMinutesSeconds,
                              endTime: DateTime.now().add(
                                const Duration(
                                  days: 0,
                                  hours: 15,
                                  minutes: 27,
                                  seconds: 34,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DailySaleItem(
                      imagePath: "assets/images/nikeshoes.png",
                      itemName: "Running Shoes",
                      discountForEachItem: "Upto 40% OFF",
                    ),
                    DailySaleItem(
                      imagePath: "assets/images/sneakrsshoes.png",
                      itemName: "Sneakers",
                      discountForEachItem: "40-60% OFF",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DailySaleItem(
                      imagePath: "assets/images/watch.png",
                      itemName: "Wrist Watches",
                      discountForEachItem: "Upto 40% OFF",
                    ),
                    DailySaleItem(
                      imagePath: "assets/images/speaker.png",
                      itemName: "Bluetooth Speakers",
                      discountForEachItem: "40-60% OFF",
                    ),
                  ],
                ),
                /*  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return DailySaleItem(
                          imagePath: dailySaleItemList[index][0],
                          itemName: dailySaleItemList[index][1],
                          discountForEachItem: dailySaleItemList[index][2]);
                    }), */
              ],
            ),
          ),
        ],
      ),
    );
  }
}
