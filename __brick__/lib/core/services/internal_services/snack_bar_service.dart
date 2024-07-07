
/// A service to show snackBars in the app without context
class SnackBarService {

  late final Function(String) _showErrorSnackBar;
  late final Function(String) _showSuccessSnackBar;

  void registerSnackBarsListeners(Function(String) showErrorSnackBar,Function(String) showSuccessSnackBar){
    _showErrorSnackBar = showErrorSnackBar;
    _showSuccessSnackBar = showSuccessSnackBar;
  }

  void showErrorSnackBar(String errorText){
    _showErrorSnackBar(errorText);
  }

  void showSuccessSnackBar(String text){
    _showSuccessSnackBar(text);
  }
}