import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/account_screen/models/account_model.dart';

/// A provider class for the AccountScreen.
///
/// This provider manages the state of the AccountScreen, including the
/// current accountModelObj

// ignore_for_file: must_be_immutable
class AccountProvider extends ChangeNotifier {
  AccountModel accountModelObj = AccountModel();

  bool isSelectedSwitch = true;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
