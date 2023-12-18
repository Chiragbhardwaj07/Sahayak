import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/account_screen/government_id_screen/models/government_id_model.dart';

/// A provider class for the GovernmentIdScreen.
///
/// This provider manages the state of the GovernmentIdScreen, including the
/// current governmentIdModelObj
class GovernmentIdProvider extends ChangeNotifier {
  TextEditingController enterAadharNumberEditTextController =
      TextEditingController();

  TextEditingController reEnterAadharNumberEditTextController =
      TextEditingController();

  TextEditingController enterNameEditTextController = TextEditingController();

  TextEditingController dateOfBirthEditTextController = TextEditingController();

  GovernmentIdModel governmentIdModelObj = GovernmentIdModel();

  @override
  void dispose() {
    super.dispose();
    enterAadharNumberEditTextController.dispose();
    reEnterAadharNumberEditTextController.dispose();
    enterNameEditTextController.dispose();
    dateOfBirthEditTextController.dispose();
  }
}
