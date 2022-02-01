import 'dart:async';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class Number extends StatelessWidget {

  final String number;
  final double opacity;
  final int r;
  final int g;
  final int b;

  const Number({ required this.number, required this.opacity, required this.r, required this.g, required this.b });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 29,
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(number, style: TextStyle(fontFamily: 'Digital7', fontSize: 61, color: Color.fromRGBO(r, g, b, opacity))),
      ),
    );
  }
}

class MoneyElement extends StatelessWidget {

  final String money;
  final double big;
  final double little;

  const MoneyElement({ required this.money, required this.big, required this.little});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 1.5,
                  color: const Color(0xffffffff)
              )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SizedBox(
                        height: 40,
                        child: Image.asset('assets/100.png'),
                      ),
                    ),
                    Text(money, style: GoogleFonts.montserrat(color: Colors.white, fontSize: big),)
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.navigateTo(BuyBacksRouter(money: money));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: MediaQuery.of(context).size.width/2-50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1.5,
                            color: const Color(0xffffffff)
                        )
                    ),
                    child: Text(money + '\$', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold, fontSize: little)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ShopPageState extends State<ShopPage> {

  late double little;
  late double small;
  late double big;
  late double vbig;

  int pageIndex = 0;

  List pictures = [Image.asset('assets/Frame.png'), Image.asset('assets/building2.png'), Image.asset('assets/Frame.png')];
  List names = ["Empire State Building", "Empire State Building2", "Empire State Building3"];
  List cost = ['69', '98', '122'];
  List metres = ['123', '88', '182'];
  List unLock = [false, true, false];

  late DateTime now;
  late String HoursString;
  var HoursInt;
  late String MinutesString;
  var MinutesInt;
  bool isOpened = false;
  int selectedIndex = 0;

  void _getTime() {
    final DateTime now = DateTime.now();
    HoursString = DateFormat('H').format(now);
    MinutesString = DateFormat('m').format(now);
    setState(() {
      MinutesInt = int.parse(MinutesString);
      HoursInt = int.parse(HoursString);
    });
  }

  @override
  void initState() {
    setState(() {
      selectedIndex = 0;
    });
    now = DateTime.now();
    HoursString = DateFormat('H').format(now);
    HoursInt = int.parse(HoursString);
    MinutesString = DateFormat('m').format(now);
    MinutesInt = int.parse(MinutesString);
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height > 600) {
      little = 14.sp;
      small = 18.sp;
      big = 24.sp;
      vbig = 32.sp;
    }
    else {
      little = 10.sp;
      small = 14.sp;
      big = 18.sp;
      vbig = 24.sp;
    }

    return Scaffold(
        body: ColorfulSafeArea(
          top: false,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end:
                Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color.fromRGBO(86, 96, 128, 1),
                  Color.fromRGBO(79, 66, 106, 1),
                ], // red to yellow
                tileMode: TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.r),
                        child: GestureDetector(
                          onTap: () {
                            context.navigateTo(const HomeRouter());
                          },
                          child: SizedBox(
                            height: 25.r,
                            width: 25.r,
                            child: Image.asset('assets/left.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.r),
                        child: GestureDetector(
                          child: SizedBox(
                            height: 40,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    width: 130,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Row(
                                children: const [
                                  Number(number: '0', opacity: 0.1, r: 220, g: 255, b: 255,),
                                  Number(number: '0', opacity: 0.1, r: 220, g: 255, b: 255,),
                                  Text(':', style: TextStyle(fontFamily: 'Digital7', fontSize: 61, color: Colors.white)),
                                  Number(number: '0', opacity: 0.1, r: 220, g: 255, b: 255,),
                                  Number(number: '0', opacity: 0.1, r: 220, g: 255, b: 255,),
                                ],
                              ),
                              Row(
                                children: [
                                  Number(number: (HoursInt~/10).toString(), opacity: 1, r: 255, g: 255, b: 255,),
                                  Number(number: (HoursInt%10).toString(), opacity: 1, r: 255, g: 255, b: 255,),
                                  const Text(':', style: TextStyle(fontFamily: 'Digital7', fontSize: 61, color: Colors.white)),
                                  Number(number: (MinutesInt~/10).toString(), opacity: 1, r: 255, g: 255, b: 255,),
                                  Number(number: (MinutesInt%10).toString(), opacity: 1, r: 255, g: 255, b: 255,),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isOpened = true;
                              });
                            },
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 21, left: 8),
                                  child: SizedBox(
                                    width: 40,
                                    child: Text('4000', textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 21, left: 95),
                                  child: GestureDetector(
                                    child: SizedBox(
                                      width: 15,
                                      child: Image.asset('assets/+.png'),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 130,
                                    child: Image.asset('assets/shutUpAndTakeMyMoney.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text('light your fire', style: GoogleFonts.overpassMono(fontSize: 11, color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 350.0,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          initialPage: 0,
                          viewportFraction: 0.5,
                          onPageChanged: (index, reason) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                        items: [0,1,2].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    height: 300,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 300,
                                            child: pictures[i],
                                          ),
                                        ),
                                        unLock[i] == false ?
                                        Align(
                                          alignment: Alignment.center,
                                          child: Image.asset('assets/close.png'),
                                        ) :
                                        const SizedBox()
                                      ],
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: SizedBox(
                              width: 200,
                              child: Text(
                                '${names[selectedIndex]}',
                                style: GoogleFonts.overpassMono(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: small
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: SizedBox(
                              width: 120,
                              child: Text(
                                '${metres[selectedIndex]} meters',
                                style: GoogleFonts.overpassMono(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: little
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: SizedBox(
                              width: 30,
                              child: Image.asset('assets/!.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1.5,
                                        color: const Color(0xffffffff)
                                    )
                                ),
                                alignment: Alignment.center,
                                height: 60,
                                width: MediaQuery.of(context).size.width-130,
                                child: Text('Unlock for ${cost[selectedIndex]} firebacks', style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white),),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
