import 'package:flutter/material.dart';

class CategoryGridWidget extends StatelessWidget {
  const CategoryGridWidget({super.key});

  Widget buildCategoryItem(String imagePath, String label) {
    return Column(
      children: [
        SizedBox(
          width: 45,
          height: 45,
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {'image': 'assets/image/allmenu.png', 'label': '전체'},
      {'image': 'assets/image/star.png', 'label': '인기'},
      {'image': 'assets/image/korea.png', 'label': '한식'},
      {'image': 'assets/image/hamburger.png', 'label': '양식'},
      {'image': 'assets/image/japan.png', 'label': '일식'},
      {'image': 'assets/image/nice.png', 'label': '편의'},
      {'image': 'assets/image/china.png', 'label': '중식'},
      {'image': 'assets/image/ice.png', 'label': '후식'},
    ];

    return Container(
      width: 320,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity
            (0.2),
            spreadRadius: 10,
            blurRadius: 10,
            offset: const Offset(1, 6),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: categories
                  .sublist(0, 4)
                  .map((c) => buildCategoryItem(c['image']!, c['label']!))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: categories
                  .sublist(4)
                  .map((c) => buildCategoryItem(c['image']!, c['label']!))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}