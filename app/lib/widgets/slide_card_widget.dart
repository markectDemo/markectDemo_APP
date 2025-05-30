import 'package:app/widgets/list/slide_list.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlideCardWidget extends StatelessWidget {
  SlideCardWidget({super.key});
  List<String> text = ['요즘 핫한! 이런거는 어때요?', '최근 방문한 가게'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text[0],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
          SizedBox(height: 20),
          SlideList(),
          SizedBox(height: 20),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text[1],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          ),
          SlideList()
        ],
      ),
    );
  }
}
