import 'package:flutter/material.dart';
import 'package:untitled1/bottom_navigation_bar/bottom_navigation_bar_items.dart';
import 'package:untitled1/bottom_navigation_bar/tabbar_enum.dart';

Map<int, TabbarEnum> tabbarMapIdToEnum = {
  1: TabbarEnum.home,
  2: TabbarEnum.maintenance,
  3: TabbarEnum.wall,
  4: TabbarEnum.services,
  5: TabbarEnum.more,
};

Map<TabbarEnum, BottomNavigationBarItem> tabbarMapEnumToTabbarItem = {
  TabbarEnum.home: homeItem(),
  TabbarEnum.maintenance: maintenanceItem(),
  TabbarEnum.wall: wallItem(),
  TabbarEnum.services: servicesItem(),
  TabbarEnum.more: moreItem(),
};

Map<TabbarEnum, Widget> tabbarMapEnumToScreen = {
  TabbarEnum.home: const Center(child: Text("Home Screen")),
  TabbarEnum.maintenance: const Center(child: Text("Maintenance Screen")),
  TabbarEnum.wall: const Center(child: Text("Wall Screen")),
  TabbarEnum.services: const Center(child: Text("Services Screen")),
  TabbarEnum.more: const Center(child: Text("More Screen")),
};
