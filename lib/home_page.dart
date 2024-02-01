import 'package:beetech_app/components/banner_swiper.dart';
import 'package:beetech_app/components/category_mark.dart';
import 'package:beetech_app/components/daily_seling_product_item.dart';
import 'package:beetech_app/components/hot_selling_product_item.dart';
import 'package:beetech_app/components/row_for_categories.dart';
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

final List hotSellingProductItem = [
  [
    "assets/images/nikeshoes.png",
    "Running Shoes",
    "Upto 40% OFF",
  ],
];

final List dailySelingProductItemList = [
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
      /*  bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_travel),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
        ),
      ]), */
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
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 90 + 2 * 195,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.47, -0.88),
                end: Alignment(-0.47, 0.88),
                colors: [Color(0xFFFDFBFB), Color(0xFFEBEDEE)],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 12),
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
                const SizedBox(height: 10),
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
                SizedBox(
                  height: 2 * 195,
                  child: GridView.builder(
                      //physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: dailySelingProductItemList.length,
                      itemBuilder: (context, index) {
                        return DailySelingProductItem(
                            imagePath: dailySelingProductItemList[index][0],
                            itemName: dailySelingProductItemList[index][1],
                            discountForEachItem:
                                dailySelingProductItemList[index][2]);
                      }),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Text(
                  'Hot Selling Footwear',
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
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 195,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: ((context, index) {
                    return const HotSellingProductItem(
                      imagePath: "assets/images/adidas.png",
                      itemName: "Adidas white sneakers for men",
                      itemPrice: 150,
                      itemOldPrice: 350,
                      itemDiscount: 50,
                      ratio: 4.4,
                      ratingCount: 412,
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }
}
