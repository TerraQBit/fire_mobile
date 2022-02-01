import 'dart:async';
import 'dart:ui';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class GuyPage extends StatefulWidget {
  const GuyPage({Key? key, required this.name, required this.isFollow}) : super(key: key);

  final String name;
  final bool isFollow;

  @override
  _GuyPageState createState() => _GuyPageState();
}

class _GuyPageState extends State<GuyPage> {

  late double little;
  late double vlittle;
  late double small;
  late double big;
  late double vbig;

  bool onTaped = false;

  List pictures = [Image.asset('assets/Frame.png'), Image.asset('assets/building2.png'), Image.asset('assets/Frame.png')];

  late DateTime now;
  late String HoursString;
  var HoursInt;
  late String MinutesString;
  var MinutesInt;
  bool isOpened = true;
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
    if (MediaQuery.of(context).size.height > 600) {
      little = 14.sp;
      vlittle = 12.sp;
      small = 18.sp;
      big = 24.sp;
      vbig = 32.sp;
    }
    else {
      little = 10.sp;
      vlittle = 8.sp;
      small = 14.sp;
      big = 18.sp;
      vbig = 24.sp;
    }

    return Scaffold(
        body: ColorfulSafeArea(
          top: false,
          child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/guy_page_back.png"),
                    fit: BoxFit.fill
                ),
              ),
              child: Column (
                mainAxisSize: MainAxisSize.max,
                children: <Widget> [
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.r-15, left: 20.r, right: 20.r, bottom: 20.r ),
                          child: GestureDetector(
                            onTap: () {
                              context.navigateTo(const RatingRouter());
                            },
                            child: SizedBox(
                              height: 25.r,
                              width: 25.r,
                              child: Image.asset('assets/left.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                            height: MediaQuery.of(context).size.height > 600 ? 80 : 60,
                            width: MediaQuery.of(context).size.height > 600 ? 80 : 60,
                            child: Image.asset('assets/avatar.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.r),
                          child: GestureDetector(
                            onTap: () {
                              context.navigateTo(const RatingRouter());
                            },
                            child: SizedBox(
                              height: 25.r,
                              width: 25.r,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.r),
                    child: Text(widget.name, style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w500, fontSize: big),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.r),
                    child: Text('Russia', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500, fontSize: little),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.r),
                    child: GlowText(widget.isFollow ? 'Follow' : 'Unfollow', style: GoogleFonts.montserrat(color: Colors.white, fontSize: small),),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        const SizedBox(
                          width: 82,
                        ),
                        SizedBox(
                          child: SizedBox(
                              child: Image.asset('assets/Frame.png')
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Container(
                            height: 30,
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
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 130,
                      child: Image.asset('assets/fire_button_true.png'),
                    ),
                  )
                ],
              )
          )
        )
    );
  }
}
