import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import './splash_screen_view_model.dart';



class SplashScreenView extends StackedView<SplashScreenViewModel> {


  const SplashScreenView({super.key});

  @override
  SplashScreenViewModel viewModelBuilder(BuildContext context) => SplashScreenViewModel();


  @override
  void onViewModelReady(SplashScreenViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.init();
  }

  @override
  Widget builder(
    BuildContext context,
    SplashScreenViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

}