import 'package:flutter/material.dart';


class PageIndicator extends StatelessWidget {

  bool isSelected;
  int margin;

  PageIndicator({this.margin = 0, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin.toDouble()),
      width: 15,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: isSelected ? Colors.blue.shade400 : Colors.grey.shade400,
      ),
    );
  }
}
