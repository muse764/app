import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'controllers/controllers.dart';
import 'generated/l10n.dart';
import 'localizations/ti_intl.dart';
import 'pages/pages.dart';
import 'utils/utils.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    required this.settingsController,
    super.key,
  });

  final SettingsController settingsController;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(final BuildContext context) => AnimatedBuilder(
        animation: widget.settingsController,
        builder: (final BuildContext context, final Widget? child) =>
            MaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',
          scrollBehavior: MouseScrollBehavior(),

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const <LocalizationsDelegate>[
            L10n.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            TiMaterialLocalizations.delegate,
          ],
          supportedLocales: L10n.delegate.supportedLocales,

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (final BuildContext context) =>
              L10n.of(context).appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.cyan,
            ),
            useMaterial3: true,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          darkTheme: ThemeData.dark(
            useMaterial3: true,
          ),
          themeMode: widget.settingsController.themeMode,
          locale: widget.settingsController.locale,
          debugShowCheckedModeBanner: false,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (final RouteSettings routeSettings) =>
              MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (final BuildContext context) {
              switch (routeSettings.name) {
                case SettingsPage.routeName:
                  return SettingsPage(controller: widget.settingsController);
                case HomePage.routeName:
                  return const HomePage();
                case StackedPage.routeName:
                  return const StackedPage();
                case SignupPage.routeName:
                  return const SignupPage();
                case LoginPage.routeName:
                  return const LoginPage();
                case SplashPage.routeName:
                default:
                  return const SplashPage();
              }
            },
          ),
        ),
      );
}
