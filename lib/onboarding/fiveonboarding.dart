import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FiveOnboardingPage extends StatefulWidget {
  const FiveOnboardingPage({Key? key}) : super(key: key);

  @override
  _FiveOnboardingPageState createState() => _FiveOnboardingPageState();
}

class _FiveOnboardingPageState extends State<FiveOnboardingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ColorfulSafeArea(
          top: false,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget> [
                          const Spacer(),
                          SizedBox(
                            height: 160.r,
                            width: 160.r,
                            child: Image.asset('assets/fire_of_fame.png'),
                          ),
                          const Spacer(),
                          GestureDetector(
                            child: SizedBox(
                              width: 240.r,
                              child: Image.asset('assets/Sign in with Apple.png'),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: SizedBox(
                              width: 240.r,
                              child: Image.asset('assets/Sign in with Google.png'),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: SizedBox(
                              width: 240.r,
                              child: Image.asset('assets/Sign in with Facebook.png'),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              context.navigateTo(HomeRouter());
                            },
                            child: SizedBox(
                              width: 230,
                              child: Text('Login without registration', textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w300)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
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
