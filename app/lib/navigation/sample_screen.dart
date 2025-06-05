import 'package:app/navigation/navgation_bar.dart';
import 'package:app/page/account_page.dart';
import 'package:app/page/assignment_page.dart';
import 'package:app/page/favorite_page.dart';
import 'package:app/page/main_page.dart';
import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget{
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleState();
}

class _SampleState extends State<SampleScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          MainPage(),
          FavoritePage(),
          AssignmentPage(),
          AccountPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedIconTheme: IconThemeData(color: Color.fromARGB(1000, 30, 48, 80)),
        selectedItemColor: Colors.black ,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: false,
        enableFeedback: false,
        iconSize: 30.0,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
        items: bottomNavItem.map(
          (e) => BottomNavigationBarItem(
            icon: Icon(e.iconData),
            activeIcon: Icon(e.activeIconData),
            label: e.label,
            )
        ).toList()
        ),
    );
  }
}