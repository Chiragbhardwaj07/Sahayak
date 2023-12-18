import 'package:chirag_s_application/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:chirag_s_application/presentation/auth/login_screen/login_screen.dart';
import 'package:chirag_s_application/presentation/auth/register_screen/register_screen.dart';
import 'package:chirag_s_application/presentation/auth/opt_screen/opt_screen.dart';
import 'package:chirag_s_application/presentation/account_screen/account_screen.dart';
import 'package:chirag_s_application/presentation/account_screen/government_id_screen_one_screen/government_id_screen_one_screen.dart';
import 'package:chirag_s_application/presentation/account_screen/ai_settings_screen/ai_settings_screen.dart';
import 'package:chirag_s_application/presentation/documents_page_screen/documents_page_screen.dart';
import 'package:chirag_s_application/presentation/account_screen/government_id_screen/government_id_screen.dart';

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
        loginScreen: LoginScreen.builder,
        registerScreen: RegisterScreen.builder,
        optScreen: OptScreen.builder,
        accountScreen: AccountScreen.builder,
        governmentIdScreenOneScreen: GovernmentIdScreenOneScreen.builder,
        documentsPageScreen: DocumentsPageScreen.builder,
        governmentIdScreen: GovernmentIdScreen.builder,
      };
}
