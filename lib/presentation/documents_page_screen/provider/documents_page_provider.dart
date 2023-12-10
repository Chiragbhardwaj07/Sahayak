import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/documents_page_screen/models/documents_page_model.dart';
import '../models/rentagreementlist_item_model.dart';
import '../models/formlist_item_model.dart';
import '../models/goodstransportorder_item_model.dart';

/// A provider class for the DocumentsPageScreen.
///
/// This provider manages the state of the DocumentsPageScreen, including the
/// current documentsPageModelObj

// ignore_for_file: must_be_immutable
class DocumentsPageProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  DocumentsPageModel documentsPageModelObj = DocumentsPageModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
