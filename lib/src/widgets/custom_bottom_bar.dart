import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/models.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    required this.onTapItem,
    required this.items,
    required this.selectedIndex,
    super.key,
  });

  final List<Bar> items;
  final Function(int index)? onTapItem;
  final int selectedIndex;

  @override
  Widget build(final BuildContext context) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        // selectedItemColor: Colors.black,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        // unselectedItemColor: Colors.grey,
        // iconSize: 30,
        onTap: onTapItem,
        elevation: 5,
        showUnselectedLabels: true,
        items: items
            .map(
              (final Bar x) => BottomNavigationBarItem(
                icon: FaIcon(x.icon),
                activeIcon: FaIcon(x.activeIcon),
                label: x.name,
              ),
            )
            .toList(),
      );
}
