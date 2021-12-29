import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
  List listStr = ['1-3 days', '3-7 days', '1-3 days'];
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
    final controller = PageController(
      initialPage: 0
    );
    return Scaffold(
        body: ColorfulSafeArea(
          color: const Color(0xff566080),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/second_background.png"),
                  repeat: ImageRepeat.repeat,
                  fit: BoxFit.fill
              ),
            ),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.r),
                      child: GestureDetector(
                        onTap: () {
                          context.navigateTo(const MenuRouter());
                        },
                        child: SizedBox(
                          height: 30.r,
                          child: Image.asset('assets/left.png'),
                        ),
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  child: Text('Fire', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: vbig),),
                ),
                const Spacer(),
                Expanded(
                  flex: 5,
                  child: PageView.builder(
                    controller: controller,
                    onPageChanged: (int page) {
                      setState(() {
                        selectedindex = page;
                      });
                      print(selectedindex);
                    },
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 150.r,
                            child: listImg[index],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 80.r),
                            child: Text(listStr[index], style: GoogleFonts.overpassMono(color: Colors.white, fontSize: big)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20.r),
                            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', textAlign: TextAlign.center, style: GoogleFonts.overpassMono(fontSize: 12, color: Colors.white)),
                          ),
                        ],
                      );
                    }
                  ),
                ),
                const Spacer(),
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
