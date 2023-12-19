import 'package:flutter/material.dart';
import 'package:sahayak/presentation/user/home_page/Template/models/template_model.dart';
import 'package:sahayak/presentation/user/home_page/models/home_model.dart';

/// A provider class for the HomePage.
///
/// This provider manages the state of the HomePage, including the
/// current homeModelObj

// ignore_for_file: must_be_immutable
class TemplateProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  TemplateModel templateModelObj = TemplateModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
