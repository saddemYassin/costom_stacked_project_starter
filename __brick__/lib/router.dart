import 'package:flutter/material.dart';
import 'package:{{projectName}}/ui/pages/pages.dart';
import 'package:{{projectName}}/core/core.dart';


Route<dynamic> generateRoute(RouteSettings settings) => switch(settings.name){
  Routes.splashScreen => getPageRoute(const SplashScreenView()),
  Routes.homeScreen => getPageRoute(const HomeScreenView()),
  _ => getPageRoute(const HomeScreenView())
};

MaterialPageRoute getPageRoute(Widget viewToShow) {
  return MaterialPageRoute(builder: (context) {
    return viewToShow;
  });
}