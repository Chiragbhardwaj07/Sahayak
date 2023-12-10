import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/chat_interface_three_screen/models/chat_interface_three_model.dart';

/// A provider class for the ChatInterfaceThreeScreen.
///
/// This provider manages the state of the ChatInterfaceThreeScreen, including the
/// current chatInterfaceThreeModelObj

// ignore_for_file: must_be_immutable
class ChatInterfaceThreeProvider extends ChangeNotifier {
  ChatInterfaceThreeModel chatInterfaceThreeModelObj =
      ChatInterfaceThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
