import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/controllers/fire_controller.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirePage extends StatefulWidget {
  const FirePage({Key? key}) : super(key: key);

  @override
  _FirePageState createState() => _FirePageState();
}

class _FirePageState extends State<FirePage> {

  late double little;
  late double small;
  late double big;
  late double vbig;
  List listStr = ['Green', 'Orange', 'Blue'];
  List colors = [Colors.green, Colors.orange, Colors.blue];
  List listImg = [Image.asset('assets/fire.png'), Image.asset('assets/red_fire.png'), Image.asset('assets/fire.png')];
  int selectedindex = 0;

  Widget _indicator(bool isActive) {
    return Container(
      height: 2,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        height: isActive
            ? 1:1.0,
        width: isActive
            ? 40:2.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0XFFEAEAEA),
        ),
      ),
    );
  }

  @override
  void initState() {
    setState(() {
      selectedindex = 0;
    });
    print(selectedindex);
    super.initState();
  }
  final FireController fc = Get.put(FireController());

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
    List colors = [Colors.red, Colors.blue, Colors.yellow];
    List text = ['Red', 'Blue', 'Yellow'];
    return Scaffold(
        body: ColorfulSafeArea(
          top: false,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: selectedindex == 1 ? const AssetImage("assets/red_fire_back.png") : const AssetImage("assets/second_background.png"),
                  fit: BoxFit.fill
              ),
            ),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          child: Text('Fire', style: GoogleFonts.overpassMono(fontSize: 32, color: Colors.white),)
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
                const Spacer(),
                Obx(() => Expanded(
                    flex: 5,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 350.0,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        initialPage: 0,
                        viewportFraction: 0.55,
                        onPageChanged: (index, reason) {
                          setState(() {
                            selectedindex = index;
                          });
                        },
                      ),
                      items: [0,1,2].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Column(
                                  children: [
                                    SvgPicture.asset('assets/fire.svg', color: colors[i], height: 220,),
                                    selectedindex == i ? GlowText(text[i], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: 18)) : const SizedBox( height: 0, width: 0,),
                                  ],
                                )
                            );
                          },
                        );
                      }).toList(),
                    )
                )
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    fc.changeBackGround(selectedindex);
                  },
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
                    width: MediaQuery.of(context).size.width-150,
                    child: Text('Selection this color', style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white),),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    selectedindex == 0 ? _indicator(true) : _indicator(false),
                    selectedindex == 1 ? _indicator(true) : _indicator(false),
                    selectedindex == 2 ? _indicator(true) : _indicator(false),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        )
    );
  }
}
/*
onPageChanged: (int page) {
                      setState(() {
                        selectedindex = page;
                      });
                      print(selectedindex);
                    },
 */
