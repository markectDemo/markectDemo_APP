import 'package:app/widgets/search_widget.dart';
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
              HeaderWidget(
                readOnly: true,
                onTap: () => Navigator.push( context, MaterialPageRoute(builder: (_) => SearchWidget()))
                ),
              const SizedBox(height: 40),
              const CategoryGridWidget(),
              SlideCardWidget(),
            ],
          ),
        );
  }
}
