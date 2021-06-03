import 'package:flutter/material.dart';
import 'package:exercise1/screen/home/home.dart';

class ActionButton extends StatelessWidget {
  final String iconStr;
  final int iconsize;
  final Function setSize;
  static int computedSize = 0;

  ActionButton(
    this.iconStr,
    this.iconsize,
    this.setSize,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: Colors.white),
      ),
      margin: EdgeInsets.all(5),
      child: IconButton(
        icon: Text(
          iconStr.toString(),
          style: TextStyle(fontSize: 16),
        ),
        onPressed: () {
          switch (iconStr) {
            case "-":
              computedSize = Home.iconsize - 50;
              if (iconsize <= 100) {
                computedSize = 100;
              }
              break;
            case "S":
              computedSize = 100;
              break;
            case "M":
              computedSize = 300;
              break;
            case "L":
              computedSize = 500;
              break;
            case "+":
              computedSize = Home.iconsize + 50;
              if (iconsize == 500) {
                computedSize = 500;
              }
              break;
          }
          this.setSize(computedSize);
        },
      ),
    );
  }
}
