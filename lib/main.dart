import 'package:sahayak/presentation/expert/expert_bottom_navbar/expert_bottom_navbar.dart';
import 'package:sahayak/presentation/expert/expert_chat/provider/expert_chat_provider.dart';
import 'package:sahayak/presentation/expert/homepage_expert/provider/expert_homepage_provider.dart';
import 'package:sahayak/presentation/user/Generate_page/ai_chat/ai_chat_page.dart';
import 'package:sahayak/presentation/user/Generate_page/ai_chat/provider/ai_chat_provider.dart';
import 'package:sahayak/presentation/user/account_screen/government_id_verification_screen/provider/government_id_screen_one_provider.dart';
import 'package:sahayak/presentation/user/account_screen/provider/account_provider.dart';
import 'package:sahayak/presentation/user/account_screen/ai_settings_screen/provider/ai_settings_provider.dart';
import 'package:sahayak/presentation/auth/login_screen/login_screen.dart';
import 'package:sahayak/presentation/auth/login_screen/provider/login_provider.dart';
import 'package:sahayak/presentation/user/bottom_navbar/bottom_navbar.dart';

import 'package:sahayak/presentation/user/documents_page_screen/provider/documents_page_provider.dart';
import 'package:sahayak/presentation/user/home_page/Template/provider/template_provider.dart';
import 'package:sahayak/presentation/user/home_page/provider/home_provider.dart';
import 'package:sahayak/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => AccountProvider()),
        ChangeNotifierProvider(create: (_) => DocumentsPageProvider()),
        ChangeNotifierProvider(create: (_) => AiSettingsProvider()),
        ChangeNotifierProvider(create: (_) => AIChatProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => GovernmentIdScreenOneProvider()),
        ChangeNotifierProvider(create: (_) => TemplateProvider()),
        ChangeNotifierProvider(create: (_) => ExpertHomePageProvider()),
        ChangeNotifierProvider(create: (_) => ExpertChatProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            theme: theme,
            title: 'legal_assitr',
            navigatorKey: NavigatorService.navigatorKey,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              AppLocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale(
                'en',
                '',
              ),
            ],
            // initialRoute: '/app_navigation_screen',
            home: BottomNavbar(),
            routes: AppRoutes.routes,
          );
        },
      ),
    );
  }
}
