import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/chat_interface_one_screen/models/chat_interface_one_model.dart';

/// A provider class for the ChatInterfaceOneScreen.
///
/// This provider manages the state of the ChatInterfaceOneScreen, including the
/// current chatInterfaceOneModelObj

// ignore_for_file: must_be_immutable
class ChatInterfaceOneProvider extends ChangeNotifier {
  TextEditingController chatOneController = TextEditingController();

  ChatInterfaceOneModel chatInterfaceOneModelObj = ChatInterfaceOneModel();

  @override
  void dispose() {
    super.dispose();
    chatOneController.dispose();
  }
}
