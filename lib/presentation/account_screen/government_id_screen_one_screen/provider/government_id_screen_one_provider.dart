import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/account_screen/government_id_screen_one_screen/models/government_id_screen_one_model.dart';

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
