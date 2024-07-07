import 'package:{{projectName}}/core/core.dart';
import 'package:{{projectName}}/locator.dart';
import 'package:{{projectName}}/router.dart';
import 'package:{{projectName}}/ui/shared_widgets/shared_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import './main_app_view_model.dart';

class MainAppView extends StackedView<MainAppViewModel> {
  const MainAppView({super.key});


  @override
  MainAppViewModel viewModelBuilder(BuildContext context) => MainAppViewModel();

  @override
  void onViewModelReady(MainAppViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.init();
  }

  @override
  Widget builder(BuildContext context, MainAppViewModel viewModel, Widget? child) {
    ScreenUtil.init(context);
    return MaterialApp(
      title: '{{projectName}}',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: generateRoute,
      navigatorKey: locator<NavigationService>().navigationKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: kPrimaryColor),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: GoogleFonts
            .poppins()
            .fontFamily,
      ),
      supportedLocales: AppConfig.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      builder: (BuildContext context, Widget? child) =>
          SafeArea(
              bottom: viewModel.bottomSafeArea,
              top: false,
              child: Navigator(
                key: viewModel.navigationService.sideEffectNavigationKey,
                onGenerateRoute: (settings) =>
                    MaterialPageRoute(
                        builder: (context) =>
                            DialogManager(
                                child: ModalBottomSheetManager(
                                    child: CustomScaffold(
                                      topSafeArea: false,
                                      bottomSafeArea: false,
                                      body: SnackBarManager(
                                        child: child!,
                                      ),
                                    )
                                )
                            )
                    ),
              )
          ),
    );
  }
}

