import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFirePage extends StatefulWidget {
  const MyFirePage({Key? key}) : super(key: key);

  @override
  _MyFirePageState createState() => _MyFirePageState();
}

class _MyFirePageState extends State<MyFirePage> {

  late double little;
  late double small;
  late double big;
  late double vbig;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height > 600) {
      little = 14.sp;
      small = 18.sp;
      big = 24.sp;
      vbig = 32.sp;
    }
    else {
      little = 10.sp;
      small = 14.sp;
      big = 18.sp;
      vbig = 24.sp;
    }
    return Scaffold(
        body: ColorfulSafeArea(
          color: const Color(0xff566080),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/second_background.png"),
                  repeat: ImageRepeat.repeat,
                  fit: BoxFit.fill
              ),
            ),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.r),
                      child: GestureDetector(
                        onTap: () {
                          context.navigateTo(const MenuRouter());
                        },
                        child: SizedBox(
                          height: 30.r,
                          child: Image.asset('assets/left.png'),
                        ),
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  child: Text('My Fire', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: vbig),),
                ),
                const Spacer(),
                SizedBox(
                  height: 150.r,
                  child: Image.asset('assets/fire.png'),
                ),
                const Spacer(),
                SizedBox(
                  height: 150.r,
                  child: Text('3 days', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: small),),
                ),
                const Spacer(),
              ],
            ),
          ),
        )
    );
  }
}
