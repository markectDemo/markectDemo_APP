import 'package:app/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [HeaderWidget()],)
      );
  }
}