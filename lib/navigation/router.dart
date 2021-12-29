import 'package:auto_route/auto_route.dart';
import 'package:fire_mobile/onboarding/firstonboarding.dart';
import 'package:fire_mobile/onboarding/fiveonboarding.dart';
import 'package:fire_mobile/onboarding/fourthonboarding.dart';
import 'package:fire_mobile/onboarding/secondonboarding.dart';
import 'package:fire_mobile/onboarding/thirdonboarding.dart';
import 'package:fire_mobile/pages/buy_backs.dart';
import 'package:fire_mobile/pages/fire_page.dart';
import 'package:fire_mobile/pages/guy_page.dart';
import 'package:fire_mobile/pages/home_page.dart';
import 'package:fire_mobile/pages/info.dart';
import 'package:fire_mobile/pages/menu.dart';
import 'package:fire_mobile/pages/my_fire.dart';
import 'package:fire_mobile/pages/personal_area.dart';
import 'package:fire_mobile/pages/personal_area_editing.dart';
import 'package:fire_mobile/pages/personal_area_unknow.dart';
import 'package:fire_mobile/pages/rating.dart';
import 'package:fire_mobile/pages/shop.dart';
import 'package:fire_mobile/pages/top_countries.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
        path: 'first',
        name: 'FirstOnboardingRouter',
        page: FirstOnboardingPage,
        initial: true
    ),
    AutoRoute(
        path: 'top_countries',
        name: 'TopCountriesRouter',
        page: TopCountriesPage,
    ),
    AutoRoute(
      path: 'second',
      name: 'SecondOnboardingRouter',
      page: SecondOnboardingPage,
    ),
    AutoRoute(
      path: 'my_fire',
      name: 'MyFireRouter',
      page: MyFirePage,
    ),
    AutoRoute(
      path: 'info',
      name: 'InfoRouter',
      page: InfoPage,
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
      path: 'buy_backs',
      name: 'BuyBacksRouter',
      page: BuyBacksPage,
    ),
    AutoRoute(
      path: 'guy',
      name: 'GuyRouter',
      page: GuyPage,
    ),
    AutoRoute(
      path: 'shop',
      name: 'ShopRouter',
      page: ShopPage,
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
      path: 'fire',
      name: 'FireRouter',
      page: FirePage,
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
    AutoRoute(
      path: 'Rating',
      name: 'RatingRouter',
      page: RatingPage,
    ),
  ],
)
class $AppRouter {}
