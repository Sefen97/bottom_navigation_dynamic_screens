import 'package:flutter/material.dart';

BottomNavigationBarItem homeItem() => const BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.all(5.0),
      child: Icon(Icons.home),
    ),
    label: "Home",
    activeIcon: Padding(padding: EdgeInsets.all(5.0), child: Icon(Icons.home)));

BottomNavigationBarItem maintenanceItem() => const BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.all(5.0),
      child: Icon(Icons.settings_applications_outlined),
    ),
    label: "Maintenance",
    activeIcon: Padding(
        padding: EdgeInsets.all(5.0),
        child: Icon(Icons.settings_applications_outlined)));

BottomNavigationBarItem wallItem() => const BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.all(5.0),
      child: Icon(Icons.date_range),
    ),
    label: "Wall",
    activeIcon:
        Padding(padding: EdgeInsets.all(5.0), child: Icon(Icons.date_range)));

BottomNavigationBarItem servicesItem() => const BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.all(5.0),
      child: Icon(Icons.medical_services_outlined),
    ),
    label: "Services",
    activeIcon: Padding(
        padding: EdgeInsets.all(5.0),
        child: Icon(Icons.medical_services_outlined)));

BottomNavigationBarItem moreItem() => const BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.all(5.0),
      child: Icon(Icons.more_horiz_rounded),
    ),
    label: "More",
    activeIcon: Padding(padding: EdgeInsets.all(5.0), child: Icon(Icons.more)));
