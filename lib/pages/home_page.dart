import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class Number extends StatelessWidget {

  final String number;
  final double opacity;
  final int r;
  final int g;
  final int b;

  const Number({ required this.number, required this.opacity, required this.r, required this.g, required this.b });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 29,
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(number, style: TextStyle(fontFamily: 'Digital7', fontSize: 61, color: Color.fromRGBO(r, g, b, opacity))),
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget> [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 20.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                child: SizedBox(
                                  height: 25.r,
                                  width: 25.r,
                                  child: Center(
                                    child: SizedBox(
                                        height: 25.r,
                                        width: 25.r,
                                        child: Image.asset('assets/menu.png')),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                  onTap: () {
                                  },
                                  child: SizedBox(
                                    height: 25.r,
                                    width: 25.r,
                                    child: Image.asset('assets/maximize_2.png'),
                                  )
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 15.r),
                              child: GestureDetector(
                                child: SizedBox(
                                  child: Center(
                                    child: SizedBox(
                                        height: 130.r,
                                        width: 25.r,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Image.asset('assets/share.png')),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              child: SizedBox(
                                child: Center(
                                  child: SizedBox(
                                    height: 150.r,
                                    width: 130.r,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                          children: [
                                            Stack(
                                              children: [
                                                Row(
                                                  children: [
                                                    Number(number: '0', opacity: 0.2, r: 0, g: 0, b: 0,),
                                                    Number(number: '0', opacity: 0.2, r: 0, g: 0, b: 0,),
                                                    Text(':', style: TextStyle(fontFamily: 'Digital7', fontSize: 61, color: Colors.white)),
                                                    Number(number: '0', opacity: 0.2, r: 0, g: 0, b: 0,),
                                                    Number(number: '0', opacity: 0.2, r: 0, g: 0, b: 0,),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Number(number: '1', opacity: 1, r: 255, g: 255, b: 255,),
                                                    Number(number: '2', opacity: 1, r: 255, g: 255, b: 255,),
                                                    Text(':', style: TextStyle(fontFamily: 'Digital7', fontSize: 61, color: Colors.white)),
                                                    Number(number: '4', opacity: 1, r: 255, g: 255, b: 255,),
                                                    Number(number: '7', opacity: 1, r: 255, g: 255, b: 255,),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 12),
                                            Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(top: 23.r, left: 10.r),
                                                  child: Text('100', style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white)),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(top: 25.r, left: 100.r),
                                                  child: GestureDetector(
                                                    child: SizedBox(
                                                      width: 15.r,
                                                      child: Image.asset('assets/+.png'),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Image.asset('assets/shutUPandtakeMyMoney.png'),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 12),
                                            Text('light your fire', style: GoogleFonts.overpassMono(fontSize: 11, color: Colors.white))
                                          ],
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 10.r),
                              child: GestureDetector(
                                  onTap: () {
                                  },
                                  child: SizedBox(
                                    height: 130.r,
                                    width: 35.r,
                                    child: Image.asset('assets/building.png'),
                                  )
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
              ),
            )
        )
    );
  }
}
