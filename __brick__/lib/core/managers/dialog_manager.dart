import 'dart:async';
import 'package:flutter/material.dart';
import 'package:{{projectName}}/core/services/internal_services/dialog_service.dart';
import 'package:{{projectName}}/locator.dart';

/// App's dialogs manager
///
/// Used to displaying modal bottom sheet without context in the entire app
/// As part from the stacked basic architecture
class DialogManager extends StatefulWidget {
  const DialogManager({super.key,required this.child});

  ///The child to be passed to the snackBar manager
  final Widget child;

  @override
  State<DialogManager>  createState() => _DialogManagerState();
}

class _DialogManagerState extends State<DialogManager> {
  final DialogService _dialogService = locator<DialogService>();


  ///Register the list of dialog listeners
  @override
  void initState() {
    super.initState();
    _dialogService.registerDialogListeners();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}