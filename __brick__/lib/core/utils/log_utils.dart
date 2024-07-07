import 'dart:async';
import 'dart:developer';
export 'translations/app_localizations.dart';
export 'translations/i18n.dart';

/// Shows log in the console of the application
///
/// Can be used to show errors in the console
void printf(String message,{
  DateTime? time,
  int? sequenceNumber,
  int level = 0,
  String name = '',
  Zone? zone,
  Object? error,
  StackTrace? stackTrace}){
  log(
      message,
      time: time,
      sequenceNumber: sequenceNumber,
      level: level,
      name: name,
      zone: zone,
      error: error,
      stackTrace: stackTrace
  );
}