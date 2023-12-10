import 'package:chirag_s_application/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:chirag_s_application/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:chirag_s_application/presentation/login_screen/login_screen.dart';
import 'package:chirag_s_application/presentation/register_screen/register_screen.dart';
import 'package:chirag_s_application/presentation/opt_screen/opt_screen.dart';
import 'package:chirag_s_application/presentation/account_screen/account_screen.dart';
import 'package:chirag_s_application/presentation/account_screen/government_id_screen_one_screen/government_id_screen_one_screen.dart';
import 'package:chirag_s_application/presentation/ai_settings_screen/ai_settings_screen.dart';
import 'package:chirag_s_application/presentation/chat_interface_one_screen/chat_interface_one_screen.dart';
import 'package:chirag_s_application/presentation/document_editor_screen/document_editor_screen.dart';
import 'package:chirag_s_application/presentation/document_editor_two_screen/document_editor_two_screen.dart';
import 'package:chirag_s_application/presentation/share_screen/share_screen.dart';
import 'package:chirag_s_application/presentation/documents_page_screen/documents_page_screen.dart';
import 'package:chirag_s_application/presentation/government_id_screen/government_id_screen.dart';
import 'package:chirag_s_application/presentation/chat_interface_screen/chat_interface_screen.dart';
import 'package:chirag_s_application/presentation/document_editor_one_screen/document_editor_one_screen.dart';
import 'package:chirag_s_application/presentation/chat_interface_two_screen/chat_interface_two_screen.dart';
import 'package:chirag_s_application/presentation/chat_interface_three_screen/chat_interface_three_screen.dart';
import 'package:chirag_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String optScreen = '/opt_screen';

  static const String accountScreen = '/account_screen';

  static const String governmentIdScreenOneScreen =
      '/government_id_screen_one_screen';

  static const String aiSettingsScreen = '/ai_settings_screen';

  static const String chatInterfaceOneScreen = '/chat_interface_one_screen';

  static const String documentEditorScreen = '/document_editor_screen';

  static const String documentEditorTwoScreen = '/document_editor_two_screen';

  static const String shareScreen = '/share_screen';

  static const String documentsPageScreen = '/documents_page_screen';

  static const String governmentIdScreen = '/government_id_screen';

  static const String chatInterfaceScreen = '/chat_interface_screen';

  static const String documentEditorOneScreen = '/document_editor_one_screen';

  static const String chatInterfaceTwoScreen = '/chat_interface_two_screen';

  static const String chatInterfaceThreeScreen = '/chat_interface_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';
  static const String Splash_Screen = '/splash_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homePageContainerScreen: HomePageContainerScreen.builder,
        loginScreen: LoginScreen.builder,
        registerScreen: RegisterScreen.builder,
        optScreen: OptScreen.builder,
        accountScreen: AccountScreen.builder,
        governmentIdScreenOneScreen: GovernmentIdScreenOneScreen.builder,
        chatInterfaceOneScreen: ChatInterfaceOneScreen.builder,
        documentEditorScreen: DocumentEditorScreen.builder,
        documentEditorTwoScreen: DocumentEditorTwoScreen.builder,
        shareScreen: ShareScreen.builder,
        documentsPageScreen: DocumentsPageScreen.builder,
        governmentIdScreen: GovernmentIdScreen.builder,
        chatInterfaceScreen: ChatInterfaceScreen.builder,
        documentEditorOneScreen: DocumentEditorOneScreen.builder,
        chatInterfaceTwoScreen: ChatInterfaceTwoScreen.builder,
        chatInterfaceThreeScreen: ChatInterfaceThreeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomePageContainerScreen.builder,
      };
}
