import 'dart:async';
import 'dart:ui';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key,}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
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

class _HomePageState extends State<HomePage> {

  late DateTime now;
  late String HoursString;
  var HoursInt;
  late String MinutesString;
  var MinutesInt;
  bool isOpened = false;
  int fireCount = 0;

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
    return Scaffold(
        body: ColorfulSafeArea(
          top: false,
          color: const Color(0xff566080),
          child: Stack(
            children: [
              Container(
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
                    image: DecorationImage(
                        image: AssetImage("assets/little_fire.png"),
                        fit: BoxFit.fill
                    ),
                  ),
                  child: Center(
                    child: Column (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget> [
                        Padding(
                          padding: EdgeInsets.only(right: 15.r, left: 15.r, top: 15.r+MediaQuery.of(context).padding.top, bottom: 20.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  context.navigateTo(const MenuRouter());
                                },
                                child: SizedBox(
                                  height: 25.r,
                                  width: 25.r,
                                  child: Center(
                                    child: SizedBox(
                                        height: 25.r,
                                        width: 25.r,
                                        child: Image.asset('assets/menu.png')),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                  onTap: () {
                                  },
                                  child: SizedBox(
                                    height: 25.r,
                                    width: 25.r,
                                    child: Image.asset('assets/maximize_2.png'),
                                  )
                              )
                            ],
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20.r, top: 12.r),
                                child: GestureDetector(
                                  onTap: () {

                                  },
                                  child: SizedBox(
                                      height: 20.r,
                                      child: Image.asset('assets/share.png')),
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: SizedBox(
                                child: Center(
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
                                                  Number(number: '0', opacity: 0.2, r: 0, g: 0, b: 0,),
                                                  Number(number: '0', opacity: 0.2, r: 0, g: 0, b: 0,),
                                                  Text(':', style: TextStyle(fontFamily: 'Digital7', fontSize: 61, color: Colors.white)),
                                                  Number(number: '0', opacity: 0.2, r: 0, g: 0, b: 0,),
                                                  Number(number: '0', opacity: 0.2, r: 0, g: 0, b: 0,),
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
                                                  padding: const EdgeInsets.only(top: 22, left: 10),
                                                  child: Text('100', textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 25, left: 95),
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
                                                    child: Image.asset('assets/shutUPandtakeMyMoney.png'),
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
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10.r, top: 10.r),
                                child: GestureDetector(
                                  onTap: () {
                                    context.navigateTo(const InfoRouter());
                                  },
                                  child: SizedBox(
                                      height: 140.r,
                                      child: Image.asset('assets/building_right.png')),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              ),
              isOpened == true ?
                  SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 9,
                        sigmaY: 9
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.r+MediaQuery.of(context).padding.top, horizontal: 15.r),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  context.navigateTo(const MenuRouter());
                                },
                                child: SizedBox(
                                  height: 30.r,
                                  width: 30.r,
                                  child: Center(
                                    child: SizedBox(
                                      height: 25.r,
                                      width: 25.r,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isOpened = false;
                                      fireCount = 0;
                                    });
                                  },
                                  child: SizedBox(
                                    height: 30.r,
                                    width: 30.r,
                                    child: Image.asset('assets/x.png'),
                                  )
                              )
                            ],
                          ),
                          const Spacer(),
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 85, top: 17),
                                  child: GestureDetector(
                                    child: SizedBox(
                                      width: 30,
                                      child: Text(fireCount == 0 ? '_' : fireCount.toString(), textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 130,
                                  child: Image.asset('assets/add_fire.png'),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 85, top: 17),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        fireCount+=1;
                                        print(fireCount);
                                      });
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset('assets/+.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          SizedBox(
                            width: 165,
                            child: Text('To light a fire drop the minimum', textAlign: TextAlign.center, style: GoogleFonts.overpassMono(fontSize: 15, color: Colors.white)),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('1', textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 45,
                                child: Image.asset('assets/fire_baks.png'),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          GestureDetector(
                            onTap: () {
                              context.navigateTo(const ShopRouter());
                              setState(() {
                                isOpened = false;
                              });
                            },
                            child: GlowText(
                              'Shop',
                              style: GoogleFonts.overpassMono(fontSize: 24, color: Colors.white),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            child: SizedBox(
                              height: 150,
                              child: fireCount == 0 ? Image.asset('assets/fire_button_false.png') : Image.asset('assets/fire_button_true.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              )
                  :
                  SizedBox()
            ],
          ),
        )
    );
  }
}
