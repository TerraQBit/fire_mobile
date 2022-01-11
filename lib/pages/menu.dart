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
          color: const Color.fromRGBO(79, 66, 106, 1),
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
                    ],
                    tileMode: TileMode.repeated, // repeats the gradient over the canvas
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/background.png"),
                      repeat: ImageRepeat.repeat
                  ),
                ),
                child: Center(
                  child: Column (
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget> [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.r),
                            child: GestureDetector(
                              onTap: () {
                                context.navigateTo(HomeRouter());
                              },
                              child: SizedBox(
                                height: 35.r,
                                child: Image.asset('assets/x.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 160.r,
                        width: 160.r,
                        child: Image.asset('assets/fire_of_fame.png'),
                      ),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 13.r),
                          child: GestureDetector(
                            onTap: () {
                              context.navigateTo(const PersonalAreaRouter());
                            },
                            child: SizedBox(
                              child: GlowText(
                                'Settings',
                                style: GoogleFonts.overpassMono(fontSize: big, color: Colors.white),
                              ),
                            ),
                          )
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
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 13.r),
                          child: GestureDetector(
                            onTap: () {
                              context.navigateTo(const ShopRouter());
                            },
                            child: SizedBox(
                              child: GlowText(
                                'Shop',
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
