import 'package:flutter/material.dart';
import 'package:untitled1/bottom_navigation_bar/permissions_entity.dart';
import 'package:untitled1/bottom_navigation_bar/bottom_navigation_bar_enum.dart';
import 'package:untitled1/bottom_navigation_bar/bottom_navigation_bar_map_enum_to_tabbar_item.dart';
import 'package:untitled1/bottom_navigation_bar/bottom_navigation_bar_map_id_to_enum.dart';
import 'package:untitled1/bottom_navigation_bar/bottom_navigation_bar_map_enum_to_screens.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final List<permissionsEntity> permissions;

  const BottomNavigationBarWidget({Key? key, required this.permissions})
      : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [];
  final List<BottomNavigationBarItem> _items = [];

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        elevation: 3,
        backgroundColor: Colors.white,
        unselectedLabelStyle: const TextStyle(color: Colors.blue),
        selectedLabelStyle: const TextStyle(color: Colors.blue),
        onTap: (index) => setState(() => _onItemTapped(index)),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _init() {
    for (var permissionsElement in widget.permissions) {
      BottomNavigationBarEnum? tabbarEnumElement =
          tabbarMapIdToEnum[permissionsElement.id];
      if (tabbarEnumElement != null) {
        BottomNavigationBarItem? bottomNavigationBarItems =
            bottomNavigationBarMapEnumToTabbarItem[tabbarEnumElement];
        Widget? screen = bottomNavigationBarMapEnumToScreens[tabbarEnumElement];
        if (bottomNavigationBarItems != null) {
          _items.add(bottomNavigationBarItems);
        }
        if (screen != null) {
          _pages.add(screen);
        }
      }
    }
  }
}
