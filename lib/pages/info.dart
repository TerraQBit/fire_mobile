import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {

  late double little;
  late double vlittle;
  late double small;
  late double big;
  late double vbig;

  List pictures = [Image.asset('assets/Frame.png'), Image.asset('assets/building2.png'), Image.asset('assets/Frame.png')];

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height > 600) {
      little = 14.sp;
      vlittle = 12.sp;
      small = 18.sp;
      big = 24.sp;
      vbig = 32.sp;
    }
    else {
      little = 10.sp;
      vlittle = 8.sp;
      small = 14.sp;
      big = 18.sp;
      vbig = 24.sp;
    }

    return Scaffold(
        body: ColorfulSafeArea(
          top: false,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/info_background.png"),
                  repeat: ImageRepeat.repeat,
                  fit: BoxFit.fill
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40.r+MediaQuery.of(context).padding.top),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Empire State Building', textAlign: TextAlign.center, style: GoogleFonts.overpassMono(color: Colors.white, fontSize: big)),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('The Empire State Building is a 102-story Art Deco skyscraper in Midtown Manhattan in New York City, United States. It was designed by Shreve, Lamb & Harmon and built from 1930 to 1931. Its name is derived from "Empire State", the nickname of the state of New York.', textAlign: TextAlign.center, style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little)),
                      const SizedBox(height: 30),
                      Text('381 meters', textAlign: TextAlign.center, style: GoogleFonts.overpassMono(color: Colors.white, fontSize: vbig)),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          context.navigateTo(HomeRouter());
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1,
                                  color: Color(0xffffffff)
                              )
                          ),
                          child: Text('Ок', textAlign: TextAlign.center, style: GoogleFonts.montserrat(color: Colors.white, fontSize: small)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
