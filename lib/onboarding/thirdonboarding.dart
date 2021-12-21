import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdOnboardingPage extends StatefulWidget {
  const ThirdOnboardingPage({Key? key}) : super(key: key);

  @override
  _ThirdOnboardingPageState createState() => _ThirdOnboardingPageState();
}

class _ThirdOnboardingPageState extends State<ThirdOnboardingPage> {

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
                      ], // red to yellow
                      tileMode: TileMode.repeated, // repeats the gradient over the canvas
                    ),
                  ),
                  child: Center(
                    child: Column (
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget> [
                        SizedBox(
                          height: 100.r,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: 97.r,
                            ),
                            SizedBox(
                              child: Center(
                                child: SizedBox(
                                    width: 150.r,
                                    child: Image.asset('assets/Frame.png')
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Center(
                                child: SizedBox(
                                    width: 97.r,
                                    child: Image.asset('assets/369m.png')
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60.r,
                        ),
                        Text('Light your fire!', style: GoogleFonts.overpassMono(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.r, vertical: 20.r),
                          child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', style: GoogleFonts.overpassMono(fontSize: 12, color: Colors.white)),
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  child: Text('Skip', style: GoogleFonts.overpassMono(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400))
                              ),
                              GestureDetector(
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
                    ),
                  )
              ),
            )
        )
    );
  }
}
