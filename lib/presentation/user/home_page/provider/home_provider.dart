import 'package:flutter/material.dart';
import 'package:sahayak/presentation/user/home_page/Template/models/template_model.dart';
import 'package:sahayak/presentation/user/home_page/models/home_model.dart';
import '../models/homepage_item_model.dart';

/// A provider class for the HomePage.
///
/// This provider manages the state of the HomePage, including the
/// current homeModelObj

// ignore_for_file: must_be_immutable
class HomeProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeModel homeModelObj = HomeModel();
  TemplateModel templateModelObj = TemplateModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
