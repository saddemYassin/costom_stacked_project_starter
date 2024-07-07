import 'dart:developer';
import 'package:{{projectName}}/core/core.dart';
import 'package:{{projectName}}/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';


class MainAppViewModel extends BaseViewModel with WidgetsBindingObserver {

  final NavigationService navigationService = locator<NavigationService>();

  final bool _bottomSafeArea = false;

  bool get bottomSafeArea => _bottomSafeArea;

  void init() {
    WidgetsBinding.instance.addObserver(this);
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        log('app resumed');
        break;
      case AppLifecycleState.inactive:
        log('app inactive');
        break;
      case AppLifecycleState.paused:
        log('app paused');
        break;
      case AppLifecycleState.detached:
        log('app detached');
        break;
      case AppLifecycleState.hidden:
        log('app hidden');
        break;
    }
  }

}