import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import '../../data/bar_list.dart';
import '../pages.dart';

class StackedPage extends StatefulWidget {
  const StackedPage({
    super.key,
  });

  static const String routeName = '/stacked';

  @override
  State<StackedPage> createState() => _StackedPageState();
}

class _StackedPageState extends State<StackedPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  void _onItemTapped(final int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Center(
          child: Row(
            children: <Widget>[
              if (MediaQuery.of(context).size.width > 600)
                MediaQuery.of(context).size.height < 435
                    ? SingleChildScrollView(
                        controller: ScrollController(),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxHeight: 435,
                          ),
                          child: CustomSideBar(
                            onTapItem: _onItemTapped,
                            selectedIndex: _selectedIndex,
                            items: barItems,
                          ),
                        ),
                      )
                    : CustomSideBar(
                        onTapItem: _onItemTapped,
                        selectedIndex: _selectedIndex,
                        items: barItems,
                      ),
              Expanded(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ],
          ),
        ),
        bottomNavigationBar: MediaQuery.of(context).size.width > 600.0
            ? null
            : CustomBottomBar(
                onTapItem: _onItemTapped,
                selectedIndex: _selectedIndex,
                items: barItems,
              ),
      );
}
