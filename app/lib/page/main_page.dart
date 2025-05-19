import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/category_grid_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HeaderWidget(),
        SizedBox(height: 40),
        CategoryGridWidget(),
      ],
    );
  }
}
