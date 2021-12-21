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
                        Color.fromRGBO(100, 141, 172, 1),
                        Color.fromRGBO(147, 175, 197, 1),
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
        )
    );
  }
}
