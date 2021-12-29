import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalAreaPage extends StatefulWidget {
  const PersonalAreaPage({Key? key}) : super(key: key);

  @override
  _PersonalAreaPageState createState() => _PersonalAreaPageState();
}

class _PersonalAreaPageState extends State<PersonalAreaPage> {

  bool isChecked = false;
  bool isOpenedFire = false;
  bool isCharity = false;
  bool isNotify= false;

  late double little;
  late double small;
  late double big;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height > 600) {
      little = 14.sp;
      small = 18.sp;
      big = 24.sp;
    }
    else {
      little = 10.sp;
      small = 14.sp;
      big = 18.sp;
    }
    return Scaffold(
        body: ColorfulSafeArea(
          color: const Color.fromRGBO(79, 66, 106, 1),
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
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget> [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.r),
                            child: GestureDetector(
                              onTap: () {
                                context.navigateTo(const PersonalAreaEditingRouter());
                              },
                              child: SizedBox(
                                height: 25.r,
                                width: 25.r,
                                child: Image.asset('assets/edit.png'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.r),
                            child: GestureDetector(
                              onTap: () {
                                context.navigateTo(HomeRouter());
                              },
                              child: SizedBox(
                                height: 30.r,
                                width: 30.r,
                                child: Image.asset('assets/x.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height > 600 ? 100.r : 80.r,
                        width: MediaQuery.of(context).size.height > 600 ? 100.r : 80.r,
                        child: Image.asset('assets/avatar.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.r),
                        child: Text('Alex Cooper', style: GoogleFonts.montserrat(color: Colors.white, fontSize: big),),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.r),
                        child: Text('Russia', style: GoogleFonts.montserrat(color: Colors.white, fontSize: little),),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.r),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Privacy', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: big),),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text('Opened fire', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: small),),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.r),
                                    child: GestureDetector(
                                      child: SizedBox(
                                        height: 24.r,
                                        width: 24.r,
                                        child: Image.asset('assets/what.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (isOpenedFire) {
                                      isOpenedFire = false;
                                    }
                                    else {
                                      isOpenedFire = true;
                                    }
                                  });
                                },
                                child: SizedBox(
                                  height: 25.r,
                                  width: 25.r,
                                  child: isOpenedFire ? Image.asset('assets/true_checkbox.png') : Image.asset('assets/false_checkbox.png'),
                                ),
                              ),

                            ],
                          )
                      ),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Charity', softWrap: false, style: GoogleFonts.overpassMono(color: Colors.white, fontSize: small),),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.r),
                                        child: GestureDetector(
                                          child: SizedBox(
                                            height: 24.r,
                                            width: 24.r,
                                            child: Image.asset('assets/what.png'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text('give to charity 30%', style: GoogleFonts.overpassMono(color: Color.fromRGBO(180, 180, 180, 1), fontSize: small),)
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (isCharity) {
                                      isCharity = false;
                                    }
                                    else {
                                      isCharity = true;
                                    }
                                  });
                                },
                                child: SizedBox(
                                  height: 25.r,
                                  width: 25.r,
                                  child: isCharity ? Image.asset('assets/true_checkbox.png') : Image.asset('assets/false_checkbox.png'),
                                ),
                              )
                            ],
                          )
                      ),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Notify', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: big),),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (isNotify) {
                                      isNotify = false;
                                    }
                                    else {
                                      isNotify = true;
                                    }
                                  });
                                },
                                child: SizedBox(
                                  height: 25.r,
                                  width: 25.r,
                                  child: isNotify ? Image.asset('assets/true_checkbox.png') : Image.asset('assets/false_checkbox.png'),
                                ),
                              )
                            ],
                          )
                      ),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Security', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: big),),
                            ],
                          )
                      ),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height > 600 ? 50.r : 40.r,
                                width: MediaQuery.of(context).size.height > 600 ? 50.r : 40.r,
                                child: Image.asset('assets/Logo.png'),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.r),
                                child: Text('Linked account', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: small),),
                              )
                            ],
                          )
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 20.r),
                        child: GlowText('Log out', style: GoogleFonts.montserrat(color: Colors.white, fontSize: big),),
                      ),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: 25.r,
                                width: 25.r,
                                child: Image.asset('assets/share.png'),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.r),
                                child: GlowText('Share app', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: big),),
                              )
                            ],
                          )
                      ),
                      const Spacer()
                    ],
                  ),
                )
            ),
          ),
        )
    );
  }
}
