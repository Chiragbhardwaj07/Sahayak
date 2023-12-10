import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/share_screen/models/share_model.dart';

/// A provider class for the ShareScreen.
///
/// This provider manages the state of the ShareScreen, including the
/// current shareModelObj
class ShareProvider extends ChangeNotifier {
  ShareModel shareModelObj = ShareModel();

  @override
  void dispose() {
    super.dispose();
  }
}
