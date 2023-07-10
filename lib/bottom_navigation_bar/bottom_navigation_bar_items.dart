import 'package:flutter/material.dart';

BottomNavigationBarItem bottomNavigationBarHomeItem() =>
    _item(label: "Home", icon: Icons.home);

BottomNavigationBarItem bottomNavigationBarMaintenanceItem() =>
    _item(label: "Maintenance", icon: Icons.settings_applications_outlined);

BottomNavigationBarItem bottomNavigationBarWallItem() =>
    _item(label: "Wall", icon: Icons.date_range);

BottomNavigationBarItem bottomNavigationBarServicesItem() =>
    _item(label: "Services", icon: Icons.medical_services_outlined);

BottomNavigationBarItem bottomNavigationBarMoreItem() =>
    _item(label: "More", icon: Icons.more);

BottomNavigationBarItem _item(
        {required String label, required IconData icon}) =>
    BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(icon),
        ),
        label: label,
        activeIcon:
            Padding(padding: const EdgeInsets.all(5.0), child: Icon(icon)));
