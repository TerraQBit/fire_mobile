import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {

  String value = 'Russia';

  late double little;
  late double small;
  late double big;
  late double vbig;

  int isChoosen = 0;
  List listNumber = ['111', '2', '3', '4', '5', '6', '7'];
  List listName = ['Alex Cooper', 'Alex Cooper', 'Alex Cooper', 'Alex Cooper', 'Alex Cooper', 'Alex Cooper', 'Alex Cooper'];
  List listSurName = ['Russia', 'USA', 'Russia', 'USA', 'Russia', 'Russia', 'Russia'];
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
          child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/second_background.png"),
                    fit: BoxFit.fill
                ),
              ),
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
                              child: Text('Rate', style: GoogleFonts.overpassMono(fontSize: 32, color: Colors.white),)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.r),
                          child: GestureDetector(
                            child: SizedBox(
                              height: 25.r,
                              width: 25.r,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffb7b7b7)
                            )
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isChoosen = 0;
                                  });
                                },
                                child: Text('World', style: isChoosen == 0 ? GoogleFonts.overpassMono(color: Colors.white, fontSize: small) : GoogleFonts.overpassMono(color: Color(0xffb7b7b7), fontSize: small)),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isChoosen = 1;
                                  });
                                },
                                child: Text('Country', style: isChoosen == 1 ? GoogleFonts.overpassMono(color: Colors.white, fontSize: small) : GoogleFonts.overpassMono(color: Color(0xffb7b7b7), fontSize: small)),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isChoosen = 2;
                                  });
                                },
                                child: Text('Friends', style: isChoosen == 2 ? GoogleFonts.overpassMono(color: Colors.white, fontSize: small) : GoogleFonts.overpassMono(color: Color(0xffb7b7b7), fontSize: small)),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                  isChoosen == 0 ?
                  Expanded(
                      child: ListView.builder(
                          itemCount: listNumber.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(top: 0, bottom: 20, left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.navigateTo(GuyRouter(name: listName[index], isFollow: false));
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Container(
                                            width: 80,
                                            child: Text(listNumber[index], textAlign: TextAlign.end, style: GoogleFonts.overpassMono(color: Colors.white, fontWeight: FontWeight.bold, fontSize: big)),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            print(index);
                                          },
                                          child: SizedBox(
                                            height: 40,
                                            child: Image.asset('assets/avatar.png'),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(listName[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little)),
                                              Text(listSurName[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Text(metres[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little)),
                                  ),
                                ],
                              ),
                            );
                          }
                      )
                  ) : SizedBox(),
                  isChoosen == 1 ?
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1,
                                      color: Color(0xffb7b7b7)
                                  )
                              ),
                              height: 60,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: DropdownButton<String>(
                                  value: value,
                                  isExpanded: true,
                                  icon: Image.asset('assets/down.png'),
                                  underline: Container(
                                    height: 0,
                                  ),
                                  style: GoogleFonts.overpassMono(color: Colors.white, fontSize: small),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      value = newValue!;
                                    });
                                  },
                                  items: <String>['Russia', 'USA', 'Obama']
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
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: listNumber.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            context.navigateTo(GuyRouter(name: listName[index], isFollow: false));
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(right: 5),
                                                child: Container(
                                                  width: 80,
                                                  child: Text(listNumber[index], textAlign: TextAlign.end, style: GoogleFonts.overpassMono(color: Colors.white, fontWeight: FontWeight.bold, fontSize: big)),
                                                ),
                                              ),
                                              GestureDetector(
                                                child: SizedBox(
                                                  height: 40,
                                                  child: Image.asset('assets/avatar.png'),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 5),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(listName[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little)),
                                                    Text(listSurName[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 10),
                                          child: Text(metres[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little)),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                            ),
                          )
                        ],
                      ),
                    ),
                  ) : SizedBox(),
                  isChoosen == 2 ?
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: ListView.builder(
                          itemCount: listNumber.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(top: 0, bottom: 20, left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      context.navigateTo(GuyRouter(name: listName[index], isFollow: false));
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Container(
                                            width: 80,
                                            child: Text(listNumber[index], textAlign: TextAlign.end, style: GoogleFonts.overpassMono(color: Colors.white, fontWeight: FontWeight.bold, fontSize: big)),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            print(index);
                                          },
                                          child: SizedBox(
                                            height: 40,
                                            child: Image.asset('assets/avatar.png'),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(listName[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little)),
                                              Text(listSurName[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Text(metres[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: little)),
                                  ),
                                ],
                              ),
                            );
                          }
                      ),
                    ),
                  ) : SizedBox(),
                  Padding(
                      padding: EdgeInsets.only(left: 10.r, right: 10.r, top: 12.r),
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
                            child: GlowText('Share my rate', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: big),),
                          )
                        ],
                      )
                  ),
                  SizedBox(height: 20)
                ],
              )
          )
        )
    );
  }
}
