import './home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeScreenView extends StackedView<HomeScreenViewModel> {

  const HomeScreenView({super.key});

  @override
  HomeScreenViewModel viewModelBuilder(BuildContext context) => HomeScreenViewModel();

  @override
  void onViewModelReady(HomeScreenViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.init();
  }


  @override
  Widget builder(
      BuildContext context, HomeScreenViewModel viewModel, Widget? child) {
    return const Placeholder();
  }
}