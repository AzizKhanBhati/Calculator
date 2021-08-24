import 'package:flutter/material.dart';

class CalButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final Color textColor;
  final Color backgroundColor;
  final double height;
  final double width;
  final widget;

  const CalButton(
      {Key key,
      this.text = "F",
      @required this.onPress,
      this.textColor = Colors.black,
      this.backgroundColor = Colors.transparent,
      this.height = 48.0,
      this.width = 64.0,
      this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(text),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(24)),
        child: Center(
          child: text == "F" ||
                  text == "*" ||
                  text == "/" ||
                  text == "-" ||
                  text == "+" ||
                  text == "%"
              ? widget
              : Text(
                  text,
                  style: TextStyle(
                      color: textColor,
                      fontSize: textColor == Colors.deepOrangeAccent ? 23 : 27,
                      fontWeight: FontWeight.w500),
                ),
        ),
      ),
    );
  }
}
