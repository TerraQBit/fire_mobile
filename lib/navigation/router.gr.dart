// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../onboarding/fiveonboarding.dart' as _i4;
import '../onboarding/fourthonboarding.dart' as _i3;
import '../onboarding/secondonboarding.dart' as _i1;
import '../onboarding/thirdonboarding.dart' as _i2;
import '../pages/home_page.dart' as _i5;
import '../pages/menu.dart' as _i6;
import '../pages/personal_area.dart' as _i9;
import '../pages/personal_area_editing.dart' as _i8;
import '../pages/personal_area_unknow.dart' as _i7;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SecondOnboardingRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SecondOnboardingPage());
    },
    ThirdOnboardingRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ThirdOnboardingPage());
    },
    FourthOnboardingRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.FourthOnboardingPage());
    },
    FiveOnboardingRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.FiveOnboardingPage());
    },
    HomeRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    MenuRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MenuPage());
    },
    PersonalAreaUnknowRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PersonalAreaUnknowPage());
    },
    PersonalAreaEditingRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PersonalAreaEditingPage());
    },
    PersonalAreaRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.PersonalAreaPage());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig('/#redirect',
            path: '/', redirectTo: 'second', fullMatch: true),
        _i10.RouteConfig(SecondOnboardingRouter.name, path: 'second'),
        _i10.RouteConfig(ThirdOnboardingRouter.name, path: 'third'),
        _i10.RouteConfig(FourthOnboardingRouter.name, path: 'fourth'),
        _i10.RouteConfig(FiveOnboardingRouter.name, path: 'five'),
        _i10.RouteConfig(HomeRouter.name, path: 'home'),
        _i10.RouteConfig(MenuRouter.name, path: 'menu'),
        _i10.RouteConfig(PersonalAreaUnknowRouter.name,
            path: 'personalAreaUnknow'),
        _i10.RouteConfig(PersonalAreaEditingRouter.name,
            path: 'PersonalAreaEditing'),
        _i10.RouteConfig(PersonalAreaRouter.name, path: 'PersonalArea')
      ];
}

/// generated route for
/// [_i1.SecondOnboardingPage]
class SecondOnboardingRouter extends _i10.PageRouteInfo<void> {
  const SecondOnboardingRouter()
      : super(SecondOnboardingRouter.name, path: 'second');

  static const String name = 'SecondOnboardingRouter';
}

/// generated route for
/// [_i2.ThirdOnboardingPage]
class ThirdOnboardingRouter extends _i10.PageRouteInfo<void> {
  const ThirdOnboardingRouter()
      : super(ThirdOnboardingRouter.name, path: 'third');

  static const String name = 'ThirdOnboardingRouter';
}

/// generated route for
/// [_i3.FourthOnboardingPage]
class FourthOnboardingRouter extends _i10.PageRouteInfo<void> {
  const FourthOnboardingRouter()
      : super(FourthOnboardingRouter.name, path: 'fourth');

  static const String name = 'FourthOnboardingRouter';
}

/// generated route for
/// [_i4.FiveOnboardingPage]
class FiveOnboardingRouter extends _i10.PageRouteInfo<void> {
  const FiveOnboardingRouter() : super(FiveOnboardingRouter.name, path: 'five');

  static const String name = 'FiveOnboardingRouter';
}

/// generated route for
/// [_i5.HomePage]
class HomeRouter extends _i10.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i6.MenuPage]
class MenuRouter extends _i10.PageRouteInfo<void> {
  const MenuRouter() : super(MenuRouter.name, path: 'menu');

  static const String name = 'MenuRouter';
}

/// generated route for
/// [_i7.PersonalAreaUnknowPage]
class PersonalAreaUnknowRouter extends _i10.PageRouteInfo<void> {
  const PersonalAreaUnknowRouter()
      : super(PersonalAreaUnknowRouter.name, path: 'personalAreaUnknow');

  static const String name = 'PersonalAreaUnknowRouter';
}

/// generated route for
/// [_i8.PersonalAreaEditingPage]
class PersonalAreaEditingRouter extends _i10.PageRouteInfo<void> {
  const PersonalAreaEditingRouter()
      : super(PersonalAreaEditingRouter.name, path: 'PersonalAreaEditing');

  static const String name = 'PersonalAreaEditingRouter';
}

/// generated route for
/// [_i9.PersonalAreaPage]
class PersonalAreaRouter extends _i10.PageRouteInfo<void> {
  const PersonalAreaRouter()
      : super(PersonalAreaRouter.name, path: 'PersonalArea');

  static const String name = 'PersonalAreaRouter';
}
