import 'package:auto_route/auto_route.dart';
import 'package:fire_mobile/navigation/router.gr.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<StatefulWidget> {

  int active = 1;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        SecondOnboardingRouter(),
        ThirdOnboardingRouter(),
        FourthOnboardingRouter(),
        FiveOnboardingRouter()
      ],
      builder: (context, child, animation) {
        return Scaffold(
            body: child,
        );
      },
    );
  }
}
