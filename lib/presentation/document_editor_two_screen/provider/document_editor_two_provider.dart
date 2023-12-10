import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/document_editor_two_screen/models/document_editor_two_model.dart';

/// A provider class for the DocumentEditorTwoScreen.
///
/// This provider manages the state of the DocumentEditorTwoScreen, including the
/// current documentEditorTwoModelObj

// ignore_for_file: must_be_immutable
class DocumentEditorTwoProvider extends ChangeNotifier {
  DocumentEditorTwoModel documentEditorTwoModelObj = DocumentEditorTwoModel();

  bool isSelectedSwitch = false;

  String radioGroup = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }

  void changeRadioButton(String value) {
    radioGroup = value;
    notifyListeners();
  }
}
