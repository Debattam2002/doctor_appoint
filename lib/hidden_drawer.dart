import 'package:doctor/pages/info.dart';
import 'package:doctor/pages/todo.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class hiddenDrawer extends StatefulWidget {
  const hiddenDrawer({super.key});

  @override
  State<hiddenDrawer> createState() => _hiddenDrawerState();
}

class _hiddenDrawerState extends State<hiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Today's Tasks",
            baseStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Miltonian',
            ),
            selectedStyle: TextStyle(
              fontFamily: 'Miltonian',
              fontWeight: FontWeight.bold,
            )),
        todoPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Inspiration",
            baseStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Miltonian',
            ),
            selectedStyle: TextStyle(
              fontFamily: 'Miltonian',
              fontWeight: FontWeight.bold,
            )),
        about(),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Color(0xfffea6c8),
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50.0,
      verticalScalePercent: 90.0,
      contentCornerRadius: 40.0,
    );
  }
}
