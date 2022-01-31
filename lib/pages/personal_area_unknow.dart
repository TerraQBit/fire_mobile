import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalAreaUnknowPage extends StatefulWidget {
  const PersonalAreaUnknowPage({Key? key}) : super(key: key);

  @override
  _PersonalAreaUnknowPageState createState() => _PersonalAreaUnknowPageState();
}

class _PersonalAreaUnknowPageState extends State<PersonalAreaUnknowPage> {

  bool isOpenedFire = false;
  bool isCharity = false;

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
                    ],
                    tileMode: TileMode.repeated, // repeats the gradient over the canvas
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.fill,
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
                                child: SizedBox(
                                  height: 20.r,
                                  width: 20.r,
                                  child: Image.asset('assets/edit.png'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20.r),
                              child: GestureDetector(
                                child: SizedBox(
                                  height: 30.r,
                                  width: 30.r,
                                  child: Image.asset('assets/x.png'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height > 600 ? 120.r : 100.r,
                        width: MediaQuery.of(context).size.height > 600 ? 120.r : 100.r,
                        child: Image.asset('assets/default_avatar.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.r),
                        child: Text('User123', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500, fontSize: big),),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.r),
                        child: Text('Russia', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500, fontSize: little),),
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
                      const Spacer(),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.height > 600 ? 240.r : 200.r,
                                child: Image.asset('assets/Sign in with Apple.png'),
                              ),
                            ],
                          )
                      ),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.height > 600 ? 240.r : 200.r,
                                child: Image.asset('assets/Sign in with Google.png'),
                              ),
                            ],
                          )
                      ),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.height > 600 ? 240.r : 200.r,
                                child: Image.asset('assets/Sign in with Facebook.png'),
                              ),
                            ],
                          )
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
