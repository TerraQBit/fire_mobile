import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCountriesPage extends StatefulWidget {
  const TopCountriesPage({Key? key}) : super(key: key);

  @override
  _TopCountriesPageState createState() => _TopCountriesPageState();
}

class _TopCountriesPageState extends State<TopCountriesPage> {

  String value = 'Russia';

  late double little;
  late double small;
  late double big;
  late double vbig;

  int isChoosen = 0;
  List listNumber = ['1', '2', '3', '4', '5', '6', '7'];
  List picture = [Image.asset('assets/russia.png'), Image.asset('assets/usa.png'), Image.asset('assets/japan.png'), Image.asset('assets/canada.png'), Image.asset('assets/georgia.png'), Image.asset('assets/australia.png'), Image.asset('assets/australia.png')];
  List name = ['Russia', 'USA', 'Japan', 'Canada', 'Georgia', 'Australia', 'New Zeland'];
  List metres = ['100500 m', '100500 m', '100500 m', '100500 m', '100500 m', '100500 m', '100500 m'];

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
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget> [
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.r),
                              child: GestureDetector(
                                onTap: () {
                                  context.navigateTo(const MenuRouter());
                                },
                                child: SizedBox(
                                  height: 25.r,
                                  width: 25.r,
                                  child: Image.asset('assets/left.png'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20.r),
                              child: GestureDetector(
                                child: SizedBox(
                                  height: 30.r,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text('Top Countries', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: vbig),),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: ListView.builder(
                              itemCount: listNumber.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 5),
                                            child: Padding(
                                              padding: EdgeInsets.only(top: 5),
                                              child: Container(
                                                width: 50,
                                                child: Text(listNumber[index], textAlign: TextAlign.end, style: GoogleFonts.overpassMono(color: Colors.white, fontWeight: FontWeight.bold, fontSize: big)),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print(index);
                                            },
                                            child: Container(
                                              height: 80,
                                              alignment: Alignment.center,
                                              child: picture[index],
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Text(name[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little))
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 35),
                                        child: Text(metres[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little)),
                                      ),
                                    ],
                                  ),
                                );
                              }
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),
        )
    );
  }
}
