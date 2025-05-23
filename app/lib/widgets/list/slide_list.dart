import 'package:app/widgets/icon_widget.dart';
import 'package:flutter/material.dart';

class SlideList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: 150,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(10, (idx) {
            return Container(
              width: 200,
              margin: EdgeInsets.only(right: 20),
              color: Colors.white,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: size.height*0.1,
                    child: Image(image: AssetImage('assets/image/BHC.jpg')),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.015,
                            left: size.width * 0.02,
                            bottom: size.height * 0.006,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'BHC치킨',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '황금올리브 바삭바삭',
                                    style: TextStyle(
                                      color: Colors.grey.shade900,
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: size.width * 0.02),
                            ),
                            IconWidget(),
                            SizedBox(width: size.width * 0.17),
                            Icon(Icons.favorite, color: Colors.red, size: 18),
                          ],
                        ),
                      ],
                    ),
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
