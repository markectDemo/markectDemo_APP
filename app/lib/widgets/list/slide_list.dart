import 'package:flutter/material.dart';
import 'package:app/widgets/icon_widget.dart';

class SlideList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return SizedBox(
      height: size.height * 0.215 ,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            10,
            (idx) => SlideCard(size: size),
          ),
        ),
      ),
    );
  }
}

class SlideCard extends StatelessWidget {
  final Size size;

  const SlideCard({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.52,
      margin: const EdgeInsets.only(right: 20),
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height * 0.1,
            child: Image.asset('assets/image/BHC.jpg', fit: BoxFit.cover),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.02,
              vertical: size.height * 0.015,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BHC치킨',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '황금올리브 바삭바삭',
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    IconWidget(),
                    SizedBox(width: 40),
                    Icon(Icons.favorite, color: Colors.red, size: 18),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
