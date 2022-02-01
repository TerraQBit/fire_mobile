import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_glow/flutter_glow.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  late double little;
  late double small;
  late double big;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height > 600) {
      little = 14.sp;
      small = 18.sp;
      big = 24.sp;
    }
    else {
      little = 10.sp;
      small = 14.sp;
      big = 18.sp;
    }
    return Scaffold(
        body: ColorfulSafeArea(
          top: false,
          child: Center(
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.fill
                  ),
                ),
                child: Center(
                  child: Column (
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget> [
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.r),
                              child: GestureDetector(
                                onTap: () {
                                  context.navigateTo(HomeRouter());
                                },
                                child: SizedBox(
                                  height: 35,
                                  child: Image.asset('assets/x.png'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 190,
                        width: 160,
                        child: Image.asset('assets/fireOfFrame.png'),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.r),
                          child: GestureDetector(
                            onTap: () {
                              context.navigateTo(const FireRouter());
                            },
                            child: SizedBox(
                              child: GlowText(
                                'Fire',
                                style: GoogleFonts.overpassMono(fontSize: big, color: Colors.white),
                              ),
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 13.r),
                          child: GestureDetector(
                            onTap: () {
                              context.navigateTo(const RatingRouter());
                            },
                            child: SizedBox(
                              child: GlowText(
                                'Rating',
                                style: GoogleFonts.overpassMono(fontSize: big, color: Colors.white),
                              ),
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 13.r),
                          child: GestureDetector(
                            onTap: () {
                              context.navigateTo(const TopCountriesRouter());
                            },
                            child: SizedBox(
                              child: GlowText(
                                'TOP countries',
                                style: GoogleFonts.overpassMono(fontSize: big, color: Colors.white),
                              ),
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 13.r),
                          child: GestureDetector(
                            onTap: () {
                              context.navigateTo(const MyFireRouter());
                            },
                            child: SizedBox(
                              child: GlowText(
                                'The color of my fire',
                                style: GoogleFonts.overpassMono(fontSize: big, color: Colors.white),
                              ),
                            ),
                          )
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.r),
                        child: SizedBox(
                          child: Text(
                            'Ver 1.0',
                            style: GoogleFonts.overpassMono(fontSize: little, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
        )
    );
  }
}
