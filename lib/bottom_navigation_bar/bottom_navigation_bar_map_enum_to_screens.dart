import 'package:flutter/material.dart';
import 'package:untitled1/bottom_navigation_bar/bottom_navigation_bar_enum.dart';

Map<BottomNavigationBarEnum, Widget> bottomNavigationBarMapEnumToScreens = {
  BottomNavigationBarEnum.home: const Center(child: Text("Home Screen")),
  BottomNavigationBarEnum.maintenance: const Center(child: Text("Maintenance Screen")),
  BottomNavigationBarEnum.wall: const Center(child: Text("Wall Screen")),
  BottomNavigationBarEnum.services: const Center(child: Text("Services Screen")),
  BottomNavigationBarEnum.more: const Center(child: Text("More Screen")),
};
