import 'package:flutter/material.dart';

class Bar {
  Bar({
    required this.icon,
    required this.activeIcon,
    required this.name,
  });

  final IconData icon;
  final IconData activeIcon;
  final String name;
}
