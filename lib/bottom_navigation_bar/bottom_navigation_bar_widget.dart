import 'package:flutter/material.dart';
import 'package:untitled1/bottom_navigation_bar/permissions_entity.dart';
import 'package:untitled1/bottom_navigation_bar/tabbar_enum.dart';
import 'package:untitled1/bottom_navigation_bar/tabbar_maps.dart';

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
    for (var rolesElement in widget.permissions) {
      TabbarEnum? tabbarEnumElement = tabbarMapIdToEnum[rolesElement.id];
      if (tabbarEnumElement != null) {
        BottomNavigationBarItem? tabbarItems =
            tabbarMapEnumToTabbarItem[tabbarEnumElement];
        Widget? screen = tabbarMapEnumToScreen[tabbarEnumElement];
        if (tabbarItems != null) {
          _items.add(tabbarItems);
        }
        if (screen != null) {
          _pages.add(screen);
        }
      }
    }
  }
}
