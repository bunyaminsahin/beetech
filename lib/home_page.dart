import 'package:beetech_app/components/banner_swiper.dart';
import 'package:beetech_app/components/category_mark.dart';
import 'package:beetech_app/components/daily_seling_product_item.dart';
import 'package:beetech_app/components/selling_product_item.dart';
import 'package:beetech_app/components/row_for_categories.dart';
import 'package:beetech_app/utils/assets_manager.dart';
import 'package:beetech_app/utils/my_bottom_novigation_bar.dart';
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

final List hotSellingProductItem = [
  [
    "assets/images/adidashot.png",
    "Adidas white sneakers for men",
    68,
    136,
    50,
    4.8,
    692,
  ],
  [
    "assets/images/nikehot.png",
    "Adidas white sneakers for men",
    75,
    90,
    20,
    4.2,
    412,
  ],
  [
    "assets/images/adidashot.png",
    "Adidas white sneakers for men",
    68,
    136,
    50,
    4.8,
    692,
  ],
  [
    "assets/images/nikehot.png",
    "Adidas white sneakers for men",
    75,
    90,
    20,
    4.2,
    412,
  ],
  [
    "assets/images/adidashot.png",
    "Adidas white sneakers for men",
    68,
    136,
    50,
    4.8,
    692,
  ],
  [
    "assets/images/nikehot.png",
    "Adidas white sneakers for men",
    75,
    90,
    20,
    4.2,
    412,
  ],
];

final List recommendedSellingProductItem = [
  [
    "assets/images/allen.png",
    "Adidas white sneakers for men",
    35,
    40.25,
    15,
    4.4,
    412,
  ],
  [
    "assets/images/calvin.png",
    "Adidas white sneakers for men",
    52,
    62.4,
    20,
    4.2,
    214,
  ],
  [
    "assets/images/allen.png",
    "Adidas white sneakers for men",
    35,
    40.25,
    15,
    4.4,
    412,
  ],
  [
    "assets/images/calvin.png",
    "Adidas white sneakers for men",
    52,
    62.4,
    20,
    4.2,
    214,
  ],
  [
    "assets/images/allen.png",
    "Adidas white sneakers for men",
    35,
    40.25,
    15,
    4.4,
    412,
  ],
  [
    "assets/images/calvin.png",
    "Adidas white sneakers for men",
    52,
    62.4,
    20,
    4.2,
    214,
  ],
];

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        selectedItemColor: const Color(0x1ff1d4ed8),
        unselectedItemColor: const Color(0x1ff6b7280),
        selectedFontSize: 24,
        unselectedFontSize: 24,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home.png",
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Categories',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Orders',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      drawer: const MyDrawer(),
      appBar: AppBar(
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
                  itemCount: hotSellingProductItem.length,
                  itemBuilder: ((context, index) {
                    return HotSellingProductItem(
                      imagePath: hotSellingProductItem[index][0],
                      itemName: hotSellingProductItem[index][1],
                      itemPrice: hotSellingProductItem[index][2],
                      itemOldPrice: hotSellingProductItem[index][3],
                      itemDiscount: hotSellingProductItem[index][4],
                      ratio: hotSellingProductItem[index][5],
                      ratingCount: hotSellingProductItem[index][6],
                    );
                  })),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Text(
                  'Recommended for you',
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
                  itemCount: recommendedSellingProductItem.length,
                  itemBuilder: ((context, index) {
                    return HotSellingProductItem(
                      imagePath: recommendedSellingProductItem[index][0],
                      itemName: recommendedSellingProductItem[index][1],
                      itemPrice: recommendedSellingProductItem[index][2],
                      itemOldPrice: recommendedSellingProductItem[index][3],
                      itemDiscount: recommendedSellingProductItem[index][4],
                      ratio: recommendedSellingProductItem[index][5],
                      ratingCount: recommendedSellingProductItem[index][6],
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }
}
