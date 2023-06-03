import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../generated/l10n.dart';
import '../models/models.dart';

final List<Bar> barItems = <Bar>[
  Bar(
    icon: FontAwesomeIcons.house,
    activeIcon: FontAwesomeIcons.house,
    name: L10n.current.homePage,
  ),
  Bar(
    icon: FontAwesomeIcons.magnifyingGlass,
    activeIcon: FontAwesomeIcons.magnifyingGlass,
    name: 'Search',
  ),
  Bar(
    icon: FontAwesomeIcons.book,
    activeIcon: FontAwesomeIcons.book,
    name: 'Library',
  ),
  Bar(
    icon: FontAwesomeIcons.person,
    activeIcon: FontAwesomeIcons.house,
    name: 'Profile',
  ),
];
