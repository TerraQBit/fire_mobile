import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/pages/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyBacksPage extends StatefulWidget {
  const BuyBacksPage({Key? key, required this.money}) : super(key: key);

  final String money;

  @override
  _BuyBacksPageState createState() => _BuyBacksPageState();
}

class Element extends StatelessWidget {

  final double big;
  final double small;
  final String name;
  final String ?hint;

  const Element({required this.big, required this.small, required this.name, this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10, left: 10),
            child: Text(name, style: GoogleFonts.overpassMono(color: Colors.white, fontSize: small)),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10.r, right: 10.r),
              child: Container(
                height: 60.r,
                alignment: Alignment.center,
                child: TextField(
                  style: GoogleFonts.montserrat(color: Colors.white, fontSize: small),
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: GoogleFonts.montserrat(color: Colors.white, fontSize: small),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 1,color: Colors.white30),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 1,color: Colors.white30),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 1,color: Colors.white30),
                    ),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}

class _BuyBacksPageState extends State<BuyBacksPage> {

  late double little;
  late double small;
  late double big;
  late double vbig;

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
          color: const Color(0xff566080),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  repeat: ImageRepeat.repeat,
                  fit: BoxFit.fill
              ),
            ),
            child: Expanded(
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.r),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ShopPage(),
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 30.r,
                            child: Image.asset('assets/left.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView (
                      children:[
                        Text('Buy firebaks', textAlign: TextAlign.center, style: GoogleFonts.overpassMono(color: Colors.white, fontSize: vbig)),
                        const SizedBox(height: 40),
                        Element(name: 'Firebaks', hint: widget.money, big: big, small: small),
                        const SizedBox(height: 20),
                        Element(name: 'Card number', big: big, small: small),
                        const SizedBox(height: 20),
                        Element(name: 'Card holder', big: big, small: small),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Element(big: big, small: small, name: 'Expires'),
                            ),
                            Expanded(
                              child: Element(big: big, small: small, name: 'CVC'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        GlowText(
                          'Amount: ' + widget.money + '\$',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.overpassMono(fontSize: big, color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          child: SizedBox(
                            height: 55,
                            child: Image.asset('assets/pay.png'),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          child: SizedBox(
                            height: 55,
                            child: Image.asset('assets/unlock.png'),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  )
                ],
              ),
            )
          ),
        )
    );
  }
}
