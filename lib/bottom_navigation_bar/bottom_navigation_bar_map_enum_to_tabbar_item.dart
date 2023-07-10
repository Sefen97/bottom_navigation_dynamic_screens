import 'package:flutter/material.dart';
import 'package:untitled1/bottom_navigation_bar/bottom_navigation_bar_items.dart';
import 'package:untitled1/bottom_navigation_bar/bottom_navigation_bar_enum.dart';

Map<BottomNavigationBarEnum, BottomNavigationBarItem> bottomNavigationBarMapEnumToTabbarItem = {
  BottomNavigationBarEnum.home: bottomNavigationBarHomeItem(),
  BottomNavigationBarEnum.maintenance: bottomNavigationBarMaintenanceItem(),
  BottomNavigationBarEnum.wall: bottomNavigationBarWallItem(),
  BottomNavigationBarEnum.services: bottomNavigationBarServicesItem(),
  BottomNavigationBarEnum.more: bottomNavigationBarMoreItem(),
};
