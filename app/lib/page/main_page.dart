import 'package:app/widgets/slide_card_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/category_grid_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(readOnly: true,),
              const SizedBox(height: 40),
              const CategoryGridWidget(),
              SlideCardWidget(),
            ],
          ),
        );
  }
}
