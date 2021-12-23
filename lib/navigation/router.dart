import 'package:auto_route/auto_route.dart';
import 'package:fire_mobile/onboarding/fiveonboarding.dart';
import 'package:fire_mobile/onboarding/fourthonboarding.dart';
import 'package:fire_mobile/onboarding/secondonboarding.dart';
import 'package:fire_mobile/onboarding/thirdonboarding.dart';
import 'package:fire_mobile/pages/home_page.dart';
import 'package:fire_mobile/pages/menu.dart';
import 'package:fire_mobile/pages/personal_area.dart';
import 'package:fire_mobile/pages/personal_area_editing.dart';
import 'package:fire_mobile/pages/personal_area_unknow.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: 'second',
      name: 'SecondOnboardingRouter',
      page: SecondOnboardingPage,
      initial: true
    ),
    AutoRoute(
      path: 'third',
      name: 'ThirdOnboardingRouter',
      page: ThirdOnboardingPage,
    ),
    AutoRoute(
      path: 'fourth',
      name: 'FourthOnboardingRouter',
      page: FourthOnboardingPage,
    ),
    AutoRoute(
      path: 'five',
      name: 'FiveOnboardingRouter',
      page: FiveOnboardingPage,
    ),
    AutoRoute(
      path: 'home',
      name: 'HomeRouter',
      page: HomePage,
    ),
    AutoRoute(
      path: 'menu',
      name: 'MenuRouter',
      page: MenuPage,
    ),
    AutoRoute(
      path: 'personalAreaUnknow',
      name: 'PersonalAreaUnknowRouter',
      page: PersonalAreaUnknowPage,
    ),
    AutoRoute(
      path: 'PersonalAreaEditing',
      name: 'PersonalAreaEditingRouter',
      page: PersonalAreaEditingPage,
    ),
    AutoRoute(
      path: 'PersonalArea',
      name: 'PersonalAreaRouter',
      page: PersonalAreaPage,
    ),
  ],
)
class $AppRouter {}
