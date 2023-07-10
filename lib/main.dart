import 'package:flutter/material.dart';
import 'package:untitled1/bottom_navigation_bar/bottom_navigation_bar_widget.dart';

import 'bottom_navigation_bar/permissions_entity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar Demo',
      home: BottomNavigationBarWidget(
        permissions: [
          permissionsEntity(id: 1),
          permissionsEntity(id: 2),
          permissionsEntity(id: 3),
          permissionsEntity(id: 4),
          permissionsEntity(id: 5),
        ],
      ),
    );
  }
}
