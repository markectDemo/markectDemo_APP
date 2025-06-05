import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final bool readOnly;
  final VoidCallback? onTap;
  const HeaderWidget({super.key, required this.readOnly, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Container(
          height: 150,
          color: const Color.fromARGB(255, 106, 191, 75),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      '오늘 저녁은 이걸로 ?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    readOnly: this.readOnly,
                    onTap: this.onTap,
                    decoration: InputDecoration(
                      hintText: '매장 또는 매뉴 입력',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search, color: Color(0xFF2E7D32), size: 30.0,),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
