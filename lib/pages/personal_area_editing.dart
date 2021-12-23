import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
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

    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
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
                          child: Image.asset('assets/editing_avatar.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.r, left: 10.r, right: 10.r),
                          child: Container(
                            height: 50.r,
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
                          padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
                          child: Container(
                            height: 50.r,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Colors.white30,
                              ),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0) //                 <--- border radius here
                              ),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 5.r),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 20.r,
                                child: DropdownButton<String>(
                                  value: value,
                                  isExpanded: true,
                                  icon: Image.asset('assets/down.png'),
                                  underline: Container(
                                    height: 0,
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      value = newValue!;
                                    });
                                  },
                                  items: <String>['Всегда', 'Def', 'Nigg']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(value),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              )
                            ),
                          ),
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
                          child: GestureDetector(
                            child: GlowText('Save', style: GoogleFonts.montserrat(color: Colors.white, fontSize: big),),
                          ),
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
            )
        )
    );
  }
}
