import 'dart:async';

import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
  });

  static const String routeName = '/';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double _opacity = 0;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/stacked');
    });
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1;
      });
    });
    super.initState();
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  child: Column(
                    children: <Widget>[
                      // Image.asset(
                      //   'assets/images/logo.png',
                      //   fit: BoxFit.cover,
                      //   width: 100,
                      // ),
                      const Icon(
                        Icons.home,
                        size: 100,
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        L10n.of(context).appTitle.toUpperCase(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
