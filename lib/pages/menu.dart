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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
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
                        SizedBox(
                          height: 80.r,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 13.r),
                          child: GestureDetector(
                            child: SizedBox(
                              child: GlowText(
                                'Settings',
                                style: GoogleFonts.overpassMono(fontSize: 24.r, color: Colors.white),
                              ),
                            ),
                          )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            child: GestureDetector(
                              child: SizedBox(
                                child: GlowText(
                                  'Fire',
                                  style: GoogleFonts.overpassMono(fontSize: 24.r, color: Colors.white),
                                ),
                              ),
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 13.r),
                            child: GestureDetector(
                              child: SizedBox(
                                child: GlowText(
                                  'Rating',
                                  style: GoogleFonts.overpassMono(fontSize: 24.r, color: Colors.white),
                                ),
                              ),
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 13.r),
                            child: GestureDetector(
                              child: SizedBox(
                                child: GlowText(
                                  'TOP countries',
                                  style: GoogleFonts.overpassMono(fontSize: 24.r, color: Colors.white),
                                ),
                              ),
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 13.r),
                            child: GestureDetector(
                              child: SizedBox(
                                child: GlowText(
                                  'The color of my fire',
                                  style: GoogleFonts.overpassMono(fontSize: 24.r, color: Colors.white),
                                ),
                              ),
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 13.r),
                            child: GestureDetector(
                              child: SizedBox(
                                child: GlowText(
                                  'Shop',
                                  style: GoogleFonts.overpassMono(fontSize: 24.r, color: Colors.white),
                                ),
                              ),
                            )
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.r),
                          child: SizedBox(
                            child: GlowText(
                              'ver 1.0',
                              style: GoogleFonts.overpassMono(fontSize: 10.r, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
            )
        )
    );
  }
}
