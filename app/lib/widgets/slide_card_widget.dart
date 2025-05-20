import 'package:flutter/material.dart';

class SlideCardWidget extends StatelessWidget {
  SlideCardWidget({super.key});
  String text = '요즘 핫한! 이런거는 어때요?';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
        ),
      ],
    );
  }
}
