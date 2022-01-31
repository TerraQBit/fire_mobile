import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondOnboardingPage extends StatefulWidget {
  const SecondOnboardingPage({Key? key}) : super(key: key);

  @override
  _SecondOnboardingPageState createState() => _SecondOnboardingPageState();
}

class _SecondOnboardingPageState extends State<SecondOnboardingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ColorfulSafeArea(
          top: false,
          child: Center(
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/onboarding1_back.png"),
                      fit: BoxFit.fill
                  ),
                ),
                child: Center(
                  child: Column (
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget> [
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Column(
                          children: [
                            MediaQuery.of(context).size.height > 600 ? SizedBox(height: 70.r) : const SizedBox(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(
                                  width: 82.r,
                                ),
                                SizedBox(
                                  child: Center(
                                    child: SizedBox(
                                        width: 140.r,
                                        child: Image.asset('assets/Frame.png')
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 70),
                                  child: SizedBox(
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
                          ],
                        ),
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
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 65,
                              child: GestureDetector(
                                  onTap: () {
                                    context.navigateTo(HomeRouter());
                                  },
                                  child: Text('Skip', style: GoogleFonts.overpassMono(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400))
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: Text('1/3', style: GoogleFonts.overpassMono(fontSize: 18, color: Colors.white)),
                            ),
                            GestureDetector(
                                onTap: () {
                                  context.navigateTo(const ThirdOnboardingRouter());
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      child: Text('Next', style: GoogleFonts.overpassMono(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                      child: Image.asset('assets/right.png'),
                                    ),
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
          ),
        )
    );
  }
}
