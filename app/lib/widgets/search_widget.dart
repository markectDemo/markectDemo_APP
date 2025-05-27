import 'package:app/navigation/search_navigation_bar.dart';
import 'package:app/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderWidget(),
          SearchNavigationBar()
          ],
        )
      );
  }
}