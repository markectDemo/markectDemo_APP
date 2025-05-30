import 'package:flutter/material.dart';

class BottomNavItem {
  IconData iconData;
  IconData activeIconData;
  String label;

  BottomNavItem({
    required this.iconData,
    required this.activeIconData,
    required this.label
  });
}

final List<BottomNavItem> bottomNavItem = [
  BottomNavItem(
    iconData: Icons.home_outlined,
    activeIconData: Icons.home,
    label: '홈'
    ),
    BottomNavItem(
    iconData: Icons.favorite_border,
    activeIconData: Icons.favorite,
    label: '찜'
    ),
    BottomNavItem(
    iconData: Icons.assignment_outlined,
    activeIconData: Icons.assignment,
    label: '내역'
    ),
    BottomNavItem(
    iconData: Icons.account_circle_outlined,
    activeIconData: Icons.account_circle,
    label: '사용자'
    ),
];
