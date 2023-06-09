
import 'package:flutter/material.dart';
import 'package:ui_test/screen/home_screen.dart';
import 'package:ui_test/screen/screen_four.dart';
import 'package:ui_test/screen/screen_two.dart';
import '../utils/color_management.dart';
import '../utils/style_management.dart';
import '../widget/bottom_nav_widget.dart';
import '../widget/text_widget.dart';
import 'chart/chart_container.dart';
import 'chart/line_chart_container.dart';

class ScreenThree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Builder(builder: (BuildContext context) {
            return Container(
              height: double.infinity,
              margin: const EdgeInsets.only(bottom: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    color: Colors.white,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    color: CustomColor.appColor,
                  ),
                ],
              ),
            );
          }),
          Positioned(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
                    decoration: BoxDecoration(
                      color: CustomColor.appColor,
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Power Usage",
                              style: StyleManagement.testStyleWhiteBold18,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10.0),
                              padding: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Image.asset(
                                'assets/images/filter.png',
                                width: 20.0,
                                height: 20.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Usage this week",
                              style: StyleManagement.testStyleWhite16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "2500",
                                  style: StyleManagement.testStyleWhiteBold18,
                                ),
                                Text(
                                  "watt",
                                  style: StyleManagement.testStyleWhite12,
                                ),
                              ],
                            ),

                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            children: <Widget>[
                              ChartContainer(
                                title: '',
                                color: Colors.transparent,
                                chart: LineChartContent(),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50.0)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextWidget(title: "Total Today", style: StyleManagement.testStyleBlackBold16),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5.0),
                                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      color: CustomColor.appColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                    ),
                                    child: TextWidget(title: "4", style: StyleManagement.testStyleWhiteBold14),
                                  ),
                                ],
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                    color: CustomColor.appColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                            ],
                          ),

                          Container(
                            height: 100.0,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: BoxDecoration(
                              color: CustomColor.usageCardShadowColor,
                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 55.0,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  child: Image.asset(
                                    'assets/images/lamp2.png',
                                    height: 40.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 250.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextWidget(title: "Lamp", style: StyleManagement.testStyleBlackBold14),
                                          Row(
                                            children: [
                                              TextWidget(title: "1000", style: StyleManagement.testStyleAppColorBold14),
                                              TextWidget(title: " kw/h", style: StyleManagement.testStyleAppColor12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextWidget(title: "Kitchen - Bedroom", style: StyleManagement.testStyleBlack14),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/down.png',
                                                height: 20.0,
                                                fit: BoxFit.fill,
                                                color: Colors.red[300],
                                              ),
                                              TextWidget(title: "  -11.2%", style: StyleManagement.testStyleRed12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          TextWidget(title: "8 unit", style: StyleManagement.testStyleBlack12),
                                          Container(
                                            height: 15.0,
                                            width: 1.0,
                                            margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                            color: Colors.grey,
                                          ),
                                          TextWidget(title: "12 Jam", style: StyleManagement.testStyleBlack12),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Container(
                            height: 100.0,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: BoxDecoration(
                              color: CustomColor.usageCardShadowColor,
                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 55.0,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  child: Image.asset(
                                    'assets/images/ac.png',
                                    height: 40.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 250.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextWidget(title: "Air Condition", style: StyleManagement.testStyleBlackBold14),
                                          Row(
                                            children: [
                                              TextWidget(title: "1000", style: StyleManagement.testStyleAppColorBold14),
                                              TextWidget(title: " kw/h", style: StyleManagement.testStyleAppColor12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextWidget(title: "Kitchen - Living room", style: StyleManagement.testStyleBlack14),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/up.png',
                                                height: 20.0,
                                                fit: BoxFit.fill,
                                                color: Colors.green[300],
                                              ),
                                              TextWidget(title: "  -10.2%", style: StyleManagement.testStyleGreen12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          TextWidget(title: "8 unit", style: StyleManagement.testStyleBlack12),
                                          Container(
                                            height: 15.0,
                                            width: 1.0,
                                            margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                            color: Colors.grey,
                                          ),
                                          TextWidget(title: "12 Jam", style: StyleManagement.testStyleBlack12),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Container(
                            height: 100.0,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: BoxDecoration(
                              color: CustomColor.usageCardShadowColor,
                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 55.0,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  child: Image.asset(
                                    'assets/images/speaker.png',
                                    height: 40.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 250.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextWidget(title: "Wireless Speaker", style: StyleManagement.testStyleBlackBold14),
                                          Row(
                                            children: [
                                              TextWidget(title: "1090", style: StyleManagement.testStyleAppColorBold14),
                                              TextWidget(title: " kw/h", style: StyleManagement.testStyleAppColor12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextWidget(title: "Bedroom", style: StyleManagement.testStyleBlack14),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/down.png',
                                                height: 20.0,
                                                fit: BoxFit.fill,
                                                color: Colors.green[300],
                                              ),
                                              TextWidget(title: "  -10.2%", style: StyleManagement.testStyleGreen12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          TextWidget(title: "2 unit", style: StyleManagement.testStyleBlack12),
                                          Container(
                                            height: 15.0,
                                            width: 1.0,
                                            margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                            color: Colors.grey,
                                          ),
                                          TextWidget(title: "3 Jam", style: StyleManagement.testStyleBlack12),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Container(
                            height: 100.0,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: BoxDecoration(
                              color: CustomColor.usageCardShadowColor,
                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 55.0,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  child: Image.asset(
                                    'assets/images/tv.png',
                                    height: 40.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 250.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextWidget(title: "Television", style: StyleManagement.testStyleBlackBold14),
                                          Row(
                                            children: [
                                              TextWidget(title: "1000", style: StyleManagement.testStyleAppColorBold14),
                                              TextWidget(title: " kw/h", style: StyleManagement.testStyleAppColor12),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextWidget(title: "Living Room", style: StyleManagement.testStyleBlack14),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/down.png',
                                                height: 20.0,
                                                fit: BoxFit.fill,
                                                color: Colors.red[300],
                                              ),
                                              TextWidget(title: "  -100.2%", style: StyleManagement.testStyleRed12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          TextWidget(title: "1 unit", style: StyleManagement.testStyleBlack12),
                                          Container(
                                            height: 15.0,
                                            width: 1.0,
                                            margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                            color: Colors.grey,
                                          ),
                                          TextWidget(title: "12 Jam", style: StyleManagement.testStyleBlack12),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 65.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: CustomColor.appColor,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: BottomNavWidget(image: "assets/images/home_fill.png", title: "Home", isActive: 0),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            InkWell(
              child: BottomNavWidget(image: "assets/images/net.png", title: "Smart", isActive: 0),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
              },
            ),
            BottomNavWidget(image: "assets/images/pei.png", title: "Usage", isActive: 1),
            InkWell(
              child: BottomNavWidget(image: "assets/images/user.png", title: "User", isActive: 0),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFour()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
