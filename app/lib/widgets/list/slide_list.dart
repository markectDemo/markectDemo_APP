import 'package:flutter/material.dart';

class SlideList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(10, (idx) {
            return Container(
              width: 200,
              margin: EdgeInsets.only(right: 20),
              color: Colors.black,
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    child: Image(
                      image: AssetImage('assets/image/BBQ.jpg'),
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Text(
                    '$idx',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
