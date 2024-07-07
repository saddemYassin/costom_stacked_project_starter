import 'package:{{projectName}}/locator.dart';
import 'package:{{projectName}}/ui/pages/pages.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MainAppView());
}