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

  String text1 = 'Aenean vel nunc sit amet ex tristique aliquam nec ac lorem. Vivamus commodo magna a odio pellentesque lacinia. Aliquam rutrum vehicula ante, sit amet tristique nunc laoreet id. Ut vel lobortis quam. Suspendisse potenti. Nulla ex lectus, posuere non tortor sit amet, rutrum luctus enim.';
  String text2 = 'Nullam vel lorem at elit ultrices porta. Nulla luctus sem et pulvinar mollis.';
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
                                  context.navigateTo(const PersonalAreaEditingRouter());
                                },
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
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height > 600 ? 120.r : 100.r,
                        width: MediaQuery.of(context).size.height > 600 ? 120.r : 100.r,
                        child: Image.asset('assets/avatar.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.r),
                        child: Text('Alex Cooper', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500, fontSize: big),),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.r),
                        child: Text('Russia', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500, fontSize: little),),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.r),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Privacy', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: big),),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text('Opened fire', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: small),),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.r),
                                    child: GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20.0),
                                            ),
                                            builder: (context) {
                                              return Container(
                                                height: 350,
                                                decoration: const BoxDecoration(
                                                    color: Color.fromRGBO(78, 85, 115, 1),
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(20),
                                                      topRight: Radius.circular(20),
                                                    )
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(height: 10,),
                                                      Image.asset('assets/bottomSheetLine.png'),
                                                      SizedBox(height: 20,),
                                                      Expanded(
                                                        child: ListView(
                                                          children: [
                                                            Container(
                                                              child: Text('Opened fire', textAlign: TextAlign.start, style: GoogleFonts.overpassMono(fontSize: 24, color: Colors.white)),
                                                              alignment: Alignment.centerLeft,
                                                            ),
                                                            SizedBox(height: 20,),
                                                            Text(text1, style: GoogleFonts.overpassMono(fontSize: 15, color: Colors.white),),
                                                            SizedBox(height: 20,),
                                                            Text(text2, style: GoogleFonts.overpassMono(fontSize: 15, color: Colors.white),),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                      },
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
                          padding: EdgeInsets.symmetric(horizontal: 20.r),
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
                                            child: GestureDetector(
                                              onTap: () {
                                                showModalBottomSheet(
                                                    context: context,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20.0),
                                                    ),
                                                    builder: (context) {
                                                  return Container(
                                                    height: 350,
                                                    decoration: const BoxDecoration(
                                                      color: Color.fromRGBO(78, 85, 115, 1),
                                                      borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(20),
                                                        topRight: Radius.circular(20),
                                                      )
                                                    ),
                                                    child: Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                                      child: Column(
                                                        children: [
                                                          SizedBox(height: 10,),
                                                          Image.asset('assets/bottomSheetLine.png'),
                                                          SizedBox(height: 20,),
                                                          Expanded(
                                                            child: ListView(
                                                              children: [
                                                                Container(
                                                                  child: Text('Opened fire', textAlign: TextAlign.start, style: GoogleFonts.overpassMono(fontSize: 24, color: Colors.white)),
                                                                  alignment: Alignment.centerLeft,
                                                                ),
                                                                SizedBox(height: 20,),
                                                                Text(text1, style: GoogleFonts.overpassMono(fontSize: 15, color: Colors.white),),
                                                                SizedBox(height: 20,),
                                                                Text(text2, style: GoogleFonts.overpassMono(fontSize: 15, color: Colors.white),),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                });
                                              },
                                              child: Image.asset('assets/what.png'),
                                            ),
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
                          padding: EdgeInsets.symmetric(horizontal: 20.r),
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
                          padding: EdgeInsets.symmetric(horizontal: 20.r),
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
                          padding: EdgeInsets.symmetric(horizontal: 20.r),
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
