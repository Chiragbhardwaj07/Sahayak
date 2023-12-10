import 'package:chirag_s_application/presentation/account_screen/provider/account_provider.dart';
import 'package:chirag_s_application/presentation/ai_settings_screen/provider/ai_settings_provider.dart';
import 'package:chirag_s_application/presentation/bottom_navbar/bottom_navbar.dart';
import 'package:chirag_s_application/presentation/chat_interface_one_screen/provider/chat_interface_one_provider.dart';
import 'package:chirag_s_application/presentation/documents_page_screen/provider/documents_page_provider.dart';
import 'package:chirag_s_application/presentation/home_page/provider/home_provider.dart';
import 'package:chirag_s_application/presentation/home_page_container_screen/provider/home_page_container_provider.dart';
import 'package:chirag_s_application/presentation/splash_screen/splash_screen.dart';
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
        ChangeNotifierProvider(create: (_) => HomePageContainerProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => AccountProvider()),
        ChangeNotifierProvider(create: (_) => DocumentsPageProvider()),
        ChangeNotifierProvider(create: (_) => ChatInterfaceOneProvider()),
        ChangeNotifierProvider(create: (_) => AiSettingsProvider()),
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