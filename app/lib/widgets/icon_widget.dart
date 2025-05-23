import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        Icon(Icons.star, color: Colors.yellow, size: 18),
        SizedBox(width: size.width*0.01,),
        Text('4.3', style: TextStyle(color: Colors.black, fontSize: 12)),
        SizedBox(width: size.width*0.05,),
        Icon(Icons.align_vertical_bottom_rounded, color: Colors.grey, size: 18),
        SizedBox(width: size.width*0.01,),
        Text('380m', style: TextStyle(color: Colors.black, fontSize: 12)),
      ],
    );
  }
}
