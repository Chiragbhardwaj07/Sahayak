import 'package:flutter/material.dart';
import 'package:sahayak/presentation/user/account_screen/government_id_verification_screen/models/government_id_screen_one_model.dart';

/// A provider class for the GovernmentIdScreenOneScreen.
///
/// This provider manages the state of the GovernmentIdScreenOneScreen, including the
/// current governmentIdScreenOneModelObj

// ignore_for_file: must_be_immutable
class GovernmentIdScreenOneProvider extends ChangeNotifier {
  GovernmentIdScreenOneModel governmentIdScreenOneModelObj =
      GovernmentIdScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
