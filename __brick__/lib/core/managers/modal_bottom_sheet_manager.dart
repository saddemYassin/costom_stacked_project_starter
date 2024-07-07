import 'dart:async';
import 'package:flutter/material.dart';
import 'package:{{projectName}}/core/services/internal_services/modal_bottom_sheet_service.dart';
import 'package:{{projectName}}/locator.dart';

/// App's ModalBottomSheets manager
///
/// Used to displaying modal bottom sheet without context in the entire app
/// As part from the stacked basic architecture
class ModalBottomSheetManager extends StatefulWidget {
  const ModalBottomSheetManager({super.key,required this.child});

  ///The child to be passed to the snackBar manager
  final Widget child;

  @override
  State<ModalBottomSheetManager>  createState() => _ModalBottomSheetManagerState();
}

class _ModalBottomSheetManagerState extends State<ModalBottomSheetManager> {
  final ModalBottomSheetService _modalBottomSheetService = locator<ModalBottomSheetService>();


  ///Register the list of modal bottom sheet listeners
  @override
  void initState() {
    super.initState();
    _modalBottomSheetService.registerModalBottomSheetListeners();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
