import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool topSafeArea;
  final bool bottomSafeArea;
  final Widget?  floatingActionButton;
  final bool?  resizeToAvoidBottomInset;
  final bool extendBodyBehindAppBar;

  const CustomScaffold({
    super.key,
    this.body,
    this.appBar,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.topSafeArea = true,
    this.bottomSafeArea = true,
    this.floatingActionButton,
    this.resizeToAvoidBottomInset,
    this.extendBodyBehindAppBar=false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
      floatingActionButton: floatingActionButton,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      body: SafeArea(
        top: topSafeArea,
        bottom: bottomSafeArea,
        child: body ?? const SizedBox(),
      ),
    );
  }
}
