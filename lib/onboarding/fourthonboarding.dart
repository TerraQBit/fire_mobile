import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthOnboardingPage extends StatefulWidget {
  const FourthOnboardingPage({Key? key}) : super(key: key);

  @override
  _FourthOnboardingPageState createState() => _FourthOnboardingPageState();
}

class _FourthOnboardingPageState extends State<FourthOnboardingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ColorfulSafeArea(
          color: const Color(0xff566080),
          child: Center(
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
                child: Center(
                  child: Container(
                      child: Column (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget> [
                          Column(
                            children: [
                              MediaQuery.of(context).size.height > 600 ? SizedBox(height: 70.r) : const SizedBox(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 35.r, vertical: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset('assets/Frame.png'),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset('assets/right.png'),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 300,
                                        child: Image.asset('assets/building2.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text('Light your fire!', style: GoogleFonts.overpassMono(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20.r),
                            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', textAlign: TextAlign.center, style: GoogleFonts.overpassMono(fontSize: 12, color: Colors.white)),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      context.navigateTo(HomeRouter());
                                    },
                                    child: Text('Skip', style: GoogleFonts.overpassMono(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400))
                                ),
                                GestureDetector(
                                    onTap: () {
                                      context.navigateTo(const FiveOnboardingRouter());
                                    },
                                    child: Row(
                                      children: [
                                        Text('Next', style: GoogleFonts.overpassMono(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400)),
                                        SizedBox(
                                          height: 30.r,
                                          child: Image.asset('assets/right.png'),
                                        )
                                      ],
                                    )
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                )
            ),
          ),
        )
    );
  }
}
