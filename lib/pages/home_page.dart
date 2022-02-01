import 'dart:async';
import 'dart:ui';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/controllers/fire_controller.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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

class SendMoneyElement extends StatefulWidget {

  final String number;
  final VoidCallback onPressed;

  const SendMoneyElement({ required this.number, required this.onPressed});

  @override
  SendMoneyElementState createState() => SendMoneyElementState();
}

class SendMoneyElementState extends State<SendMoneyElement> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              child: Image.asset('assets/burnMoney.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 8),
            child: SizedBox(
              width: 38,
              child: Text(widget.number, textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 95),
            child: GestureDetector(
              onTap: () {
                widget.onPressed();
                print('123');
              },
              child: SizedBox(
                width: 20,
                child: Image.asset('assets/+.png'),
              ),
            ),
          ),
        ],
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

  final FireController fc = Get.put(FireController());

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
          child: Stack(
            children: [
              Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/blue_back.png"),
                        fit: BoxFit.fill
                    ),
                  ),
                  child: Center(
                    child: Column (
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                      height: 30,
                                      width: 30,
                                      child: Image.asset('assets/menu.png')
                                  )
                              ),
                              const Spacer(),
                              GestureDetector(
                                  onTap: () {
                                    context.navigateTo(const PersonalAreaRouter());
                                  },
                                  child: SizedBox(
                                    width: 35,
                                    child: Image.asset('assets/home_avatar.png'),
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
                                padding: EdgeInsets.only(
                                    left: 20.r, top: 12.r),
                                child: GestureDetector(
                                  onTap: () {
                                  },
                                  child: SizedBox(
                                      width: 25,
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
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  const SizedBox(
                                    width: 82,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context.navigateTo(const ShopRouter());
                                    },
                                    child: Image.asset('assets/Frame.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 70),
                                    child: SizedBox(
                                      height: 20,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('69 metres', style: GoogleFonts.overpassMono(fontSize: 12, color: Colors.white)),
                                          Image.asset('assets/line.png')
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                        isOpened == false ?
                        SizedBox(
                          width: 130,
                          child: Image.asset('assets/fire_button_true.png'),
                        ) :
                        const SizedBox()
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
                      padding: EdgeInsets.only(right: 15.r, left: 15.r, top: 15.r+MediaQuery.of(context).padding.top),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const SizedBox(
                                height: 30,
                                width: 30,
                                child: Center(
                                  child: SizedBox(
                                    height: 25,
                                    width: 25,
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
                                    height: 30,
                                    width: 30,
                                    child: Image.asset('assets/x.png'),
                                  )
                              )
                            ],
                          ),
                          const Spacer(),
                          Text('Burn Money', style: GoogleFonts.overpassMono(fontSize: 24, color: Colors.white)),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SendMoneyElement(number: '5', onPressed: () { setState(() {
                                fireCount += 5;
                              });},),
                              SizedBox(
                                width: 40,
                              ),
                              SendMoneyElement(number: '10', onPressed: () { setState(() {
                                fireCount += 10;
                              }); },),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SendMoneyElement(number: '50', onPressed: () { setState(() {
                                fireCount += 50;
                              }); },),
                              SizedBox(
                                width: 40,
                              ),
                              SendMoneyElement(number: '100', onPressed: () { setState(() {
                                fireCount += 100;
                              }); },),
                            ],
                          ),
                          const SizedBox(height: 20),
                          SendMoneyElement(number: fireCount == 0 ? '_' : fireCount.toString(), onPressed: () {
                            context.navigateTo(BuyBacksRouter(money: '10'));
                          },),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                              width: 180,
                              child: Text('To light a fire drop the minimum', textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white))
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Text(fireCount.toString(), style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 60,
                                child: Image.asset('assets/logo.png'),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 130,
                            child: Image.asset('assets/fire_button_true.png'),
                          )
                        ],
                      ),
                    ),
                  )
              )
                  :
              SizedBox()
            ],
          )
        )
    );
  }
}
