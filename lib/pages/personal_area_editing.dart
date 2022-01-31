import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalAreaEditingPage extends StatefulWidget {
  const PersonalAreaEditingPage({Key? key}) : super(key: key);

  @override
  _PersonalAreaEditingPageState createState() => _PersonalAreaEditingPageState();
}

class _PersonalAreaEditingPageState extends State<PersonalAreaEditingPage> {

  String value = 'Всегда';

  bool isChecked = false;
  bool isOpenedFire = false;
  bool isCharity = false;
  bool isNotify= false;

  late double little;
  late double small;
  late double big;

  String country = 'Russia';
  List listSurName = ['Russia', 'USA', 'Canada', 'USA', 'Russia', 'Russia', 'Russia'];
  List picture = [Image.asset('assets/russia.png'), Image.asset('assets/usa.png'), Image.asset('assets/japan.png'), Image.asset('assets/canada.png'), Image.asset('assets/georgia.png'), Image.asset('assets/australia.png'), Image.asset('assets/australia.png')];

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
        resizeToAvoidBottomInset: false,
        body: ColorfulSafeArea(
          top: false,
          child: Center(
            child: Container(
                decoration: const BoxDecoration(
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
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20.r),
                              child: GestureDetector(
                                onTap: () {
                                  context.navigateTo(const PersonalAreaRouter());
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
                        child: Image.asset('assets/editing_avatar.png'),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 20.r, left: 20.r, right: 20.r),
                          child: Container(
                            height: 60,
                            alignment: Alignment.center,
                            child: TextField(
                              style: GoogleFonts.montserrat(color: Colors.white, fontSize: small),
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(width: 1,color: Colors.white30),
                                ),
                                fillColor: Colors.yellow,
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(width: 1,color: Colors.white30),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(width: 1,color: Colors.white30),
                                ),
                              ),
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 20.r, left: 20.r, right: 20.r),
                          child: Container(
                            height: 60,
                            alignment: Alignment.center,
                            child: TextField(
                              style: GoogleFonts.montserrat(color: Colors.white, fontSize: small),
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(width: 1,color: Colors.white30),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(width: 1,color: Colors.white30),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(width: 1,color: Colors.white30),
                                ),
                              ),
                            ),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.r, left: 20.r, right: 20.r),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  width: 1,
                                  color: Colors.white30
                              )
                          ),
                          alignment: Alignment.centerLeft,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(country, style: GoogleFonts.montserrat(fontSize: small, color: Colors.white),),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        builder: (context) {
                                          return Container(
                                            height: 500,
                                            decoration: const BoxDecoration(
                                                color: Color.fromRGBO(78, 85, 115, 1),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                )
                                            ),
                                            child: Column(
                                              children: [
                                                const SizedBox(height: 10,),
                                                Image.asset('assets/bottomSheetLine.png'),
                                                const SizedBox(height: 20,),
                                                Container(
                                                  child: Text('Choose country', textAlign: TextAlign.start, style: GoogleFonts.overpassMono(fontSize: 24, color: Colors.white)),
                                                  alignment: Alignment.centerLeft,
                                                  padding: EdgeInsets.only(left: 20),
                                                ),
                                                const SizedBox(height: 20,),
                                                Expanded(child: ListView.builder(
                                                    itemCount: listSurName.length,
                                                    itemBuilder: (BuildContext context, int index) {
                                                      return Padding(
                                                        padding: EdgeInsets.only(left: 10, right: 10),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                print(index);
                                                                setState(() {
                                                                  country = listSurName[index];
                                                                });
                                                              },
                                                              child: Container(
                                                                width: MediaQuery.of(context).size.width-20,
                                                                color: Color.fromRGBO(0, 0, 0, 0),
                                                                child: Row(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    GestureDetector(
                                                                      child: Container(
                                                                        height: 90,
                                                                        child: picture[index],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsets.only(left: 10, top: 15),
                                                                      child: Text(listSurName[index], style: GoogleFonts.overpassMono(fontSize: 15, color: Colors.white),),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                ))
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  child: Image.asset('assets/down.png'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
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
                      SizedBox(height: 20,),
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
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1.5,
                                  color: Color(0xffffffff)
                              )
                          ),
                          alignment: Alignment.center,
                          height: 60,
                          width: MediaQuery.of(context).size.width-130,
                          child: Text('Save', style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white),),
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                )
            ),
          ),
        )
    );
  }
}
