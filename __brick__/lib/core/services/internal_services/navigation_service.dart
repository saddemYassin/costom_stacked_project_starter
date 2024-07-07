import 'package:flutter/material.dart';

class NavigationService {


  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> sideEffectNavigationKey = GlobalKey<NavigatorState>();



  void pop({dynamic args}) async {
    navigationKey.currentState!.pop(args);
  }

  void popUntilFirstRoute() {
    navigationKey.currentState!.popUntil((route) => route.isFirst);
  }

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigationKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> navigateToAndPop(String routeName, {dynamic arguments}) {
    return navigationKey.currentState!.popAndPushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> popAllAndNavigateTo(String routeName, {dynamic arguments}) {
    return navigationKey.currentState!.pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: arguments);
  }

  Future<dynamic> navigateToAndPopUntil(String routeName, String routeToPop,
      {dynamic arguments}) {
    return navigationKey.currentState!.pushNamedAndRemoveUntil(
        routeName, ModalRoute.withName(routeToPop),
        arguments: arguments);
  }
}