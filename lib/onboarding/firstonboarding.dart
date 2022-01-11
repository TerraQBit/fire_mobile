import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstOnboardingPage extends StatefulWidget {
  const FirstOnboardingPage({Key? key}) : super(key: key);

  @override
  _FirstOnboardingPageState createState() => _FirstOnboardingPageState();
}

class _FirstOnboardingPageState extends State<FirstOnboardingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ColorfulSafeArea(
          top: false,
          child: Center(
              child: GestureDetector(
                onTap: () {
                  context.navigateTo(const SecondOnboardingRouter());
                },
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
                      child: SizedBox(
                        height: 160.r,
                        width: 160.r,
                        child: Image.asset('assets/fire_of_fame.png'),
                      ),
                    )
                ),
              )
          ),
        )
    );
  }
}
