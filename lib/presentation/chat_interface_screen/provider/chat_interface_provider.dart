import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/chat_interface_screen/models/chat_interface_model.dart';

/// A provider class for the ChatInterfaceScreen.
///
/// This provider manages the state of the ChatInterfaceScreen, including the
/// current chatInterfaceModelObj

// ignore_for_file: must_be_immutable
class ChatInterfaceProvider extends ChangeNotifier {
  ChatInterfaceModel chatInterfaceModelObj = ChatInterfaceModel();

  @override
  void dispose() {
    super.dispose();
  }
}
