import 'package:flutter/material.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/chat_interface_two_screen/models/chat_interface_two_model.dart';

/// A provider class for the ChatInterfaceTwoScreen.
///
/// This provider manages the state of the ChatInterfaceTwoScreen, including the
/// current chatInterfaceTwoModelObj

// ignore_for_file: must_be_immutable
class ChatInterfaceTwoProvider extends ChangeNotifier {
  TextEditingController subjectValueColumnController = TextEditingController();

  TextEditingController aadharnoEditTextController = TextEditingController();

  TextEditingController aadharnoEditTextController1 = TextEditingController();

  TextEditingController aadharnoEditTextController2 = TextEditingController();

  TextEditingController aadharnoEditTextController3 = TextEditingController();

  TextEditingController aadharnoEditTextController4 = TextEditingController();

  TextEditingController aadharnoEditTextController5 = TextEditingController();

  TextEditingController aadharnoEditTextController6 = TextEditingController();

  ChatInterfaceTwoModel chatInterfaceTwoModelObj = ChatInterfaceTwoModel();

  @override
  void dispose() {
    super.dispose();
    subjectValueColumnController.dispose();
    aadharnoEditTextController.dispose();
    aadharnoEditTextController1.dispose();
    aadharnoEditTextController2.dispose();
    aadharnoEditTextController3.dispose();
    aadharnoEditTextController4.dispose();
    aadharnoEditTextController5.dispose();
    aadharnoEditTextController6.dispose();
  }
}
