import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  late String money = '0';

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
                  image: AssetImage("assets/background.png"),
                  repeat: ImageRepeat.repeat,
                  fit: BoxFit.fill
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.r, top: 15.r+MediaQuery.of(context).padding.top),
                      child: GestureDetector(
                        onTap: () {
                          context.navigateTo(const ShopRouter());
                        },
                        child: SizedBox(
                          height: 30.r,
                          child: Image.asset('assets/left.png'),
                        ),

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.r+MediaQuery.of(context).padding.top),
                      child: Text('Buy firebaks', textAlign: TextAlign.center, style: GoogleFonts.overpassMono(color: Colors.white, fontSize: vbig)),
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width-80,
                  child: Text('Enter the exact amount of firebucks you want to purchase.', textAlign: TextAlign.center, style: GoogleFonts.overpassMono(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (text) {
                      setState(() {
                        money = text;
                      });
                    },
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: small),
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(width: 1,color: Colors.white70),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(width: 1,color: Colors.white70),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(width: 1,color: Colors.white70),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: GlowText('Amount: ' + money + '\$', textAlign: TextAlign.center, style: GoogleFonts.overpassMono(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
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
                      child: Text('Go to checkout', style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),),
                    ),
                  ),
                )
              ],
            )
          ),
        )
    );
  }
}
