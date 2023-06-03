import 'package:flutter/material.dart';
import '../../generated/l10n.dart';
import 'package:muse_api/muse_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var jsonMap;

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  Future getUsers() async {
    jsonMap = await Muse().getUsers();
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(L10n.of(context).homePage),
          actions: <IconButton>[
            IconButton(
              onPressed: () => Navigator.pushNamed(context, '/settings'),
              icon: const Icon(Icons.settings),
            )
          ],
        ),
        body: Center(
          child: Text(jsonMap.toString()),
        ),
      );
}
