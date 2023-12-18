import 'package:flutter/material.dart';
import 'package:sahayak/presentation/auth/register_screen/models/register_model.dart';

/// A provider class for the RegisterScreen.
///
/// This provider manages the state of the RegisterScreen, including the
/// current registerModelObj

// ignore_for_file: must_be_immutable
class RegisterProvider extends ChangeNotifier {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController nameFieldController = TextEditingController();

  TextEditingController phoneNumberFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  RegisterModel registerModelObj = RegisterModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    emailFieldController.dispose();
    nameFieldController.dispose();
    phoneNumberFieldController.dispose();
    passwordFieldController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
