import 'package:fire_mobile/pages/home_page.dart';
import 'package:fire_mobile/pages/menu.dart';
import 'package:fire_mobile/pages/personal_area.dart';
import 'package:fire_mobile/pages/personal_area_editing.dart';
import 'package:fire_mobile/pages/personal_area_unknow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'onboarding/firstonboarding.dart';
import 'onboarding/fiveonboarding.dart';
import 'onboarding/fourthonboarding.dart';
import 'onboarding/secondonboarding.dart';
import 'onboarding/thirdonboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 850),
        builder: () => const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PersonalAreaEditingPage(),
        ));
  }
}
