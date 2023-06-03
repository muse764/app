import 'package:flutter/material.dart';

import '../../controllers/controllers.dart';
import '../../generated/l10n.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    required this.controller,
    super.key,
  });

  static const String routeName = '/settings';
  final SettingsController controller;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late ThemeMode theme;
  late Locale locale;

  @override
  initState() {
    super.initState();
    theme = widget.controller.themeMode;
    locale = widget.controller.locale;
  }

  Future<void> _darkModeDialog() async => showDialog(
        context: context,
        builder: (final BuildContext context) => AlertDialog(
          title: const Text('Dark mode'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <ListTile>[
                ListTile(
                  leading: Radio(
                    value: ThemeMode.system,
                    groupValue: theme,
                    onChanged: (final ThemeMode? value) {
                      setState(() {
                        theme = value as ThemeMode;
                      });
                    },
                  ),
                  title: const Text('Follow system'),
                  onTap: () {
                    widget.controller.updateThemeMode(ThemeMode.system);
                    theme = ThemeMode.system;
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: ThemeMode.light,
                    groupValue: theme,
                    onChanged: (final ThemeMode? value) {
                      setState(() {
                        theme = value as ThemeMode;
                      });
                    },
                  ),
                  title: const Text('Off'),
                  onTap: () {
                    widget.controller.updateThemeMode(ThemeMode.light);
                    theme = ThemeMode.light;
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: ThemeMode.dark,
                    groupValue: theme,
                    onChanged: (final ThemeMode? value) {
                      setState(() {
                        theme = value as ThemeMode;
                      });
                    },
                  ),
                  title: const Text('On'),
                  onTap: () {
                    widget.controller.updateThemeMode(ThemeMode.dark);
                    theme = ThemeMode.dark;
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            )
          ],
        ),
      );

  Future<void> _appLanguageDialog() async => showDialog(
        context: context,
        builder: (final BuildContext context) => AlertDialog(
          title: const Text('App language'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <ListTile>[
                ListTile(
                  leading: Radio(
                    value: const Locale('en'),
                    groupValue: locale,
                    onChanged: (final Locale? value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: Text(L10n.of(context).english),
                  onTap: () {
                    widget.controller.updateLocale(const Locale('en'));
                    locale = const Locale('en');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('am'),
                    groupValue: locale,
                    onChanged: (final Locale? value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: Text(L10n.of(context).amharic),
                  onTap: () {
                    widget.controller.updateLocale(const Locale('am'));
                    locale = const Locale('am');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('ti'),
                    groupValue: locale,
                    onChanged: (final Locale? value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: Text(L10n.of(context).tigrigna),
                  onTap: () {
                    widget.controller.updateLocale(const Locale('ti'));
                    locale = const Locale('ti');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('ar'),
                    groupValue: locale,
                    onChanged: (final Locale? value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: Text(L10n.of(context).arabic),
                  onTap: () {
                    widget.controller.updateLocale(const Locale('ar'));
                    locale = const Locale('ar');
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            )
          ],
        ),
      );

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Appearance'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Dark mode'),
              subtitle: const Text('Follow system'),
              onTap: () => _darkModeDialog(),
            ),
            ListTile(
              title: const Text('App language'),
              subtitle: Text(locale.toString()),
              onTap: () => _appLanguageDialog(),
            ),
          ],
        ),
      );
}
