import 'dart:async';
import 'package:flutter/material.dart';
import 'package:{{projectName}}/core/services/internal_services/snack_bar_service.dart';
import 'package:{{projectName}}/locator.dart';

/// App's SnackBars manager
///
/// Used to eliminate displaying snackBar without context in the entire app
/// As part from the stacked basic architecture
class SnackBarManager extends StatefulWidget {
  const SnackBarManager({super.key,required this.child});

  ///The child to be passed to the snackBar manager
  final Widget child;

  @override
  State<SnackBarManager>  createState() => _SnackBarManagerState();
}

class _SnackBarManagerState extends State<SnackBarManager> {
  final SnackBarService _snackBarService = locator<SnackBarService>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  ///The duration until the snackBar will be dismissed automatically
  static const Duration _snackBarDuration = Duration(seconds: 4);

  ///Register the list of snackBar listeners
  @override
  void initState() {
    super.initState();
    _snackBarService.registerSnackBarsListeners(showErrorSnackBar, showSuccessSnackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: widget.child,
    );
  }

  ///Display error snackBar containing [mainText]
  void showErrorSnackBar(String errorText) {
    ScaffoldMessenger.of(_scaffoldKey.currentContext!).showSnackBar(
        SnackBar(
            backgroundColor: Theme.of(context).colorScheme.error,
            content: Row(
                children: [
                  const Icon(Icons.error_outline),
                  const SizedBox(width: 20,),
                  Flexible(child: Text(errorText,maxLines: 2,))
                ]
            )
        )
    );
    Timer(_snackBarDuration, () {
      ScaffoldMessenger.of(_scaffoldKey.currentContext!).hideCurrentSnackBar();
    });
  }

  ///Display success snackBar containing [mainText]
  void showSuccessSnackBar(String text) {
    ScaffoldMessenger.of(_scaffoldKey.currentContext!).showSnackBar(
        SnackBar(
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            content: Row(
                children: [
                  const Icon(Icons.verified),
                  const SizedBox(width: 20,),
                  Flexible(child: Text(text,maxLines: 2,))
                ]
            )
        )
    );
    Timer(_snackBarDuration, () {
      ScaffoldMessenger.of(_scaffoldKey.currentContext!).hideCurrentSnackBar();
    });
  }
}
