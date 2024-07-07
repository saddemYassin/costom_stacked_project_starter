import 'package:get_it/get_it.dart';
import 'package:{{projectName}}/core/core.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<DialogService>(() => DialogService());
  locator.registerLazySingleton<SnackBarService>(() => SnackBarService());
  locator.registerLazySingleton<ModalBottomSheetService>(() => ModalBottomSheetService());
}
