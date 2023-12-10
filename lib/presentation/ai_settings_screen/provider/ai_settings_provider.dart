import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/ai_settings_screen/models/ai_settings_model.dart';

/// A provider class for the AiSettingsScreen.
///
/// This provider manages the state of the AiSettingsScreen, including the
/// current aiSettingsModelObj

// ignore_for_file: must_be_immutable
class AiSettingsProvider extends ChangeNotifier {
  AiSettingsModel aiSettingsModelObj = AiSettingsModel();

  bool isSelectedSwitch = false;
  double _value = 50;
  double _value2 = 50;

  double get value => _value;
  double get val2 => _value2;

  @override
  void dispose() {
    super.dispose();
  }

  void setValue1(double v1) {
    _value = v1;
    notifyListeners();
  }

  void setValue2(double v1) {
    _value2 = v1;
    notifyListeners();
  }

  void changeSwitchBox(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
