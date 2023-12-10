import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/document_editor_screen/models/document_editor_model.dart';

/// A provider class for the DocumentEditorScreen.
///
/// This provider manages the state of the DocumentEditorScreen, including the
/// current documentEditorModelObj

// ignore_for_file: must_be_immutable
class DocumentEditorProvider extends ChangeNotifier {
  DocumentEditorModel documentEditorModelObj = DocumentEditorModel();

  @override
  void dispose() {
    super.dispose();
  }
}
