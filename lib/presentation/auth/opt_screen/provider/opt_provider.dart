import 'package:flutter/material.dart';
import 'package:sahayak/presentation/auth/opt_screen/models/opt_model.dart';

/// A provider class for the OptScreen.
///
/// This provider manages the state of the OptScreen, including the
/// current optModelObj

// ignore_for_file: must_be_immutable
class OptProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  OptModel optModelObj = OptModel();

  @override
  void dispose() {
    super.dispose();
  }
}
