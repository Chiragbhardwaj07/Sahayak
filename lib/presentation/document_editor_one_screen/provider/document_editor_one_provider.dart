import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/document_editor_one_screen/models/document_editor_one_model.dart';

/// A provider class for the DocumentEditorOneScreen.
///
/// This provider manages the state of the DocumentEditorOneScreen, including the
/// current documentEditorOneModelObj
class DocumentEditorOneProvider extends ChangeNotifier {
  DocumentEditorOneModel documentEditorOneModelObj = DocumentEditorOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
