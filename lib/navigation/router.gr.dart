// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/cupertino.dart' as _i21;
import 'package:flutter/material.dart' as _i20;

import '../onboarding/firstonboarding.dart' as _i1;
import '../onboarding/fiveonboarding.dart' as _i11;
import '../onboarding/fourthonboarding.dart' as _i7;
import '../onboarding/secondonboarding.dart' as _i3;
import '../onboarding/thirdonboarding.dart' as _i6;
import '../pages/buy_backs.dart' as _i8;
import '../pages/fire_page.dart' as _i15;
import '../pages/guy_page.dart' as _i9;
import '../pages/home_page.dart' as _i12;
import '../pages/info.dart' as _i5;
import '../pages/menu.dart' as _i13;
import '../pages/my_fire.dart' as _i4;
import '../pages/personal_area.dart' as _i17;
import '../pages/personal_area_editing.dart' as _i16;
import '../pages/personal_area_unknow.dart' as _i14;
import '../pages/rating.dart' as _i18;
import '../pages/shop.dart' as _i10;
import '../pages/top_countries.dart' as _i2;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    FirstOnboardingRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.FirstOnboardingPage());
    },
    TopCountriesRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TopCountriesPage());
    },
    SecondOnboardingRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SecondOnboardingPage());
    },
    MyFireRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MyFirePage());
    },
    InfoRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.InfoPage());
    },
    ThirdOnboardingRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ThirdOnboardingPage());
    },
    FourthOnboardingRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.FourthOnboardingPage());
    },
    BuyBacksRouter.name: (routeData) {
      final args = routeData.argsAs<BuyBacksRouterArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.BuyBacksPage(key: args.key, money: args.money));
    },
    GuyRouter.name: (routeData) {
      final args = routeData.argsAs<GuyRouterArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.GuyPage(
              key: args.key, name: args.name, isFollow: args.isFollow));
    },
    ShopRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ShopPage());
    },
    FiveOnboardingRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.FiveOnboardingPage());
    },
    HomeRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.HomePage());
    },
    MenuRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.MenuPage());
    },
    PersonalAreaUnknowRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.PersonalAreaUnknowPage());
    },
    FireRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.FirePage());
    },
    PersonalAreaEditingRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.PersonalAreaEditingPage());
    },
    PersonalAreaRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.PersonalAreaPage());
    },
    RatingRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.RatingPage());
    }
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig('/#redirect',
            path: '/', redirectTo: 'first', fullMatch: true),
        _i19.RouteConfig(FirstOnboardingRouter.name, path: 'first'),
        _i19.RouteConfig(TopCountriesRouter.name, path: 'top_countries'),
        _i19.RouteConfig(SecondOnboardingRouter.name, path: 'second'),
        _i19.RouteConfig(MyFireRouter.name, path: 'my_fire'),
        _i19.RouteConfig(InfoRouter.name, path: 'info'),
        _i19.RouteConfig(ThirdOnboardingRouter.name, path: 'third'),
        _i19.RouteConfig(FourthOnboardingRouter.name, path: 'fourth'),
        _i19.RouteConfig(BuyBacksRouter.name, path: 'buy_backs'),
        _i19.RouteConfig(GuyRouter.name, path: 'guy'),
        _i19.RouteConfig(ShopRouter.name, path: 'shop'),
        _i19.RouteConfig(FiveOnboardingRouter.name, path: 'five'),
        _i19.RouteConfig(HomeRouter.name, path: 'home'),
        _i19.RouteConfig(MenuRouter.name, path: 'menu'),
        _i19.RouteConfig(PersonalAreaUnknowRouter.name,
            path: 'personalAreaUnknow'),
        _i19.RouteConfig(FireRouter.name, path: 'fire'),
        _i19.RouteConfig(PersonalAreaEditingRouter.name,
            path: 'PersonalAreaEditing'),
        _i19.RouteConfig(PersonalAreaRouter.name, path: 'PersonalArea'),
        _i19.RouteConfig(RatingRouter.name, path: 'Rating')
      ];
}

/// generated route for
/// [_i1.FirstOnboardingPage]
class FirstOnboardingRouter extends _i19.PageRouteInfo<void> {
  const FirstOnboardingRouter()
      : super(FirstOnboardingRouter.name, path: 'first');

  static const String name = 'FirstOnboardingRouter';
}

/// generated route for
/// [_i2.TopCountriesPage]
class TopCountriesRouter extends _i19.PageRouteInfo<void> {
  const TopCountriesRouter()
      : super(TopCountriesRouter.name, path: 'top_countries');

  static const String name = 'TopCountriesRouter';
}

/// generated route for
/// [_i3.SecondOnboardingPage]
class SecondOnboardingRouter extends _i19.PageRouteInfo<void> {
  const SecondOnboardingRouter()
      : super(SecondOnboardingRouter.name, path: 'second');

  static const String name = 'SecondOnboardingRouter';
}

/// generated route for
/// [_i4.MyFirePage]
class MyFireRouter extends _i19.PageRouteInfo<void> {
  const MyFireRouter() : super(MyFireRouter.name, path: 'my_fire');

  static const String name = 'MyFireRouter';
}

/// generated route for
/// [_i5.InfoPage]
class InfoRouter extends _i19.PageRouteInfo<void> {
  const InfoRouter() : super(InfoRouter.name, path: 'info');

  static const String name = 'InfoRouter';
}

/// generated route for
/// [_i6.ThirdOnboardingPage]
class ThirdOnboardingRouter extends _i19.PageRouteInfo<void> {
  const ThirdOnboardingRouter()
      : super(ThirdOnboardingRouter.name, path: 'third');

  static const String name = 'ThirdOnboardingRouter';
}

/// generated route for
/// [_i7.FourthOnboardingPage]
class FourthOnboardingRouter extends _i19.PageRouteInfo<void> {
  const FourthOnboardingRouter()
      : super(FourthOnboardingRouter.name, path: 'fourth');

  static const String name = 'FourthOnboardingRouter';
}

/// generated route for
/// [_i8.BuyBacksPage]
class BuyBacksRouter extends _i19.PageRouteInfo<BuyBacksRouterArgs> {
  BuyBacksRouter({_i21.Key? key, required String money})
      : super(BuyBacksRouter.name,
            path: 'buy_backs',
            args: BuyBacksRouterArgs(key: key, money: money));

  static const String name = 'BuyBacksRouter';
}

class BuyBacksRouterArgs {
  const BuyBacksRouterArgs({this.key, required this.money});

  final _i21.Key? key;

  final String money;

  @override
  String toString() {
    return 'BuyBacksRouterArgs{key: $key, money: $money}';
  }
}

/// generated route for
/// [_i9.GuyPage]
class GuyRouter extends _i19.PageRouteInfo<GuyRouterArgs> {
  GuyRouter({_i21.Key? key, required String name, required bool isFollow})
      : super(GuyRouter.name,
            path: 'guy',
            args: GuyRouterArgs(key: key, name: name, isFollow: isFollow));

  static const String name = 'GuyRouter';
}

class GuyRouterArgs {
  const GuyRouterArgs({this.key, required this.name, required this.isFollow});

  final _i21.Key? key;

  final String name;

  final bool isFollow;

  @override
  String toString() {
    return 'GuyRouterArgs{key: $key, name: $name, isFollow: $isFollow}';
  }
}

/// generated route for
/// [_i10.ShopPage]
class ShopRouter extends _i19.PageRouteInfo<void> {
  const ShopRouter() : super(ShopRouter.name, path: 'shop');

  static const String name = 'ShopRouter';
}

/// generated route for
/// [_i11.FiveOnboardingPage]
class FiveOnboardingRouter extends _i19.PageRouteInfo<void> {
  const FiveOnboardingRouter() : super(FiveOnboardingRouter.name, path: 'five');

  static const String name = 'FiveOnboardingRouter';
}

/// generated route for
/// [_i12.HomePage]
class HomeRouter extends _i19.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i13.MenuPage]
class MenuRouter extends _i19.PageRouteInfo<void> {
  const MenuRouter() : super(MenuRouter.name, path: 'menu');

  static const String name = 'MenuRouter';
}

/// generated route for
/// [_i14.PersonalAreaUnknowPage]
class PersonalAreaUnknowRouter extends _i19.PageRouteInfo<void> {
  const PersonalAreaUnknowRouter()
      : super(PersonalAreaUnknowRouter.name, path: 'personalAreaUnknow');

  static const String name = 'PersonalAreaUnknowRouter';
}

/// generated route for
/// [_i15.FirePage]
class FireRouter extends _i19.PageRouteInfo<void> {
  const FireRouter() : super(FireRouter.name, path: 'fire');

  static const String name = 'FireRouter';
}

/// generated route for
/// [_i16.PersonalAreaEditingPage]
class PersonalAreaEditingRouter extends _i19.PageRouteInfo<void> {
  const PersonalAreaEditingRouter()
      : super(PersonalAreaEditingRouter.name, path: 'PersonalAreaEditing');

  static const String name = 'PersonalAreaEditingRouter';
}

/// generated route for
/// [_i17.PersonalAreaPage]
class PersonalAreaRouter extends _i19.PageRouteInfo<void> {
  const PersonalAreaRouter()
      : super(PersonalAreaRouter.name, path: 'PersonalArea');

  static const String name = 'PersonalAreaRouter';
}

/// generated route for
/// [_i18.RatingPage]
class RatingRouter extends _i19.PageRouteInfo<void> {
  const RatingRouter() : super(RatingRouter.name, path: 'Rating');

  static const String name = 'RatingRouter';
}
