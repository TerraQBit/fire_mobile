import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:fire_mobile/pages/buy_backs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class MoneyElement extends StatelessWidget {

  final String money;
  final double big;
  final double little;

  const MoneyElement({ required this.money, required this.big, required this.little});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 1.5,
                  color: Color(0xffffffff)
              )
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: SizedBox(
                        height: 40,
                        child: Image.asset('assets/100.png'),
                      ),
                    ),
                    Text(money, style: GoogleFonts.montserrat(color: Colors.white, fontSize: big),)
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BuyBacksPage(money: money,),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: MediaQuery.of(context).size.width/2-50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1.5,
                            color: Color(0xffffffff)
                        )
                    ),
                    child: Text(money + '\$', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold, fontSize: little)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ShopPageState extends State<ShopPage> {

  late double little;
  late double small;
  late double big;
  late double vbig;

  int pageIndex = 0;

  List pictures = [Image.asset('assets/Frame.png'), Image.asset('assets/building2.png'), Image.asset('assets/Frame.png')];

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
        initialPage: 0,
        viewportFraction: 0.5,
    );

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
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    child: Text('Shop', style: GoogleFonts.overpassMono(color: Colors.white, fontSize: vbig),),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MoneyElement(money: '100', big: big, little: little),
                          MoneyElement(money: '200', big: big, little: little)
                        ],
                      ),
                      SizedBox(
                        height: 700,
                        child: PageView.builder(
                            controller: controller,
                            itemCount: 3,
                            onPageChanged: (int page) {
                              setState(() {
                                pageIndex = page;
                              });
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: pageIndex == index ? EdgeInsets.only(top: 0) : EdgeInsets.only(top: 70),
                                    child: SizedBox(
                                      height: pageIndex == index ? 350.r : 250.r,
                                      child: pictures[index],
                                    ),
                                  ),
                                  pageIndex == index ? Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 25),
                                        child: SizedBox(
                                          width: 200,
                                          child: Text(
                                            'Empire State Building',
                                            style: GoogleFonts.overpassMono(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: small
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: SizedBox(
                                          width: 120,
                                          child: Text(
                                            '381 meters',
                                            style: GoogleFonts.overpassMono(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: little
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: SizedBox(
                                          width: 30,
                                          child: Image.asset('assets/!.png'),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: SizedBox(
                                          width: 250,
                                          child: GestureDetector(
                                            child: Padding(
                                              padding: EdgeInsets.only(bottom: 15),
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 60,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(
                                                        width: 1.5,
                                                        color: Color(0xffffffff)
                                                    )
                                                ),
                                                child: Text('Unlock for 1500\$', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold, fontSize: little)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ) :
                                      const SizedBox()
                                ],
                              );
                            }
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MoneyElement(money: '500', big: big, little: little),
                          MoneyElement(money: '1000', big: big, little: little)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MoneyElement(money: '1500', big: big, little: little),
                          MoneyElement(money: '2000', big: big, little: little),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
