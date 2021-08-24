import 'package:calculator/controller/calculatorController.dart';
import 'package:calculator/views/calbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllButtons extends StatelessWidget {
  final controller = Get.put(CalController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizedHeight = size.height * .04;
    return Column(
      children: [
        SizedBox(
          height: sizedHeight,
        ),

        /// AC C % /
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CalButton(
              text: "C",
              textColor: Colors.deepOrangeAccent,
              onPress: controller.allClear,
            ),
            CalButton(
              widget: Container(
                child: Image.asset(
                  "assets/delete.png",
                  height: 23,
                  width: 23,
                  fit: BoxFit.cover,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              textColor: Colors.deepOrangeAccent,
              onPress: controller.Clear,
            ),
            CalButton(
              widget: Container(
                child: Image.asset(
                  "assets/percent.png",
                  height: 16,
                  width: 16,
                  fit: BoxFit.cover,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              text: "%",
              textColor: Colors.deepOrangeAccent,
              onPress: controller.numbClick,
            ),
            CalButton(
              widget: Container(
                child: Image.asset(
                  "assets/divide.png",
                  height: 26,
                  width: 26,
                  fit: BoxFit.cover,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              text: "/",
              textColor: Colors.deepOrangeAccent,
              onPress: controller.numbClick,
            ),
          ],
        ),

        SizedBox(
          height: sizedHeight,
        ),

        /// 7 8 9 *
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CalButton(
              text: "7",
              onPress: controller.numbClick,
            ),
            CalButton(
              text: "8",
              onPress: controller.numbClick,
            ),
            CalButton(
              text: "9",
              onPress: controller.numbClick,
            ),
            CalButton(
              widget: Container(
                child: Image.asset(
                  "assets/multiply.png",
                  height: 14,
                  width: 14,
                  fit: BoxFit.cover,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              text: '*',
              textColor: Colors.deepOrangeAccent,
              onPress: controller.numbClick,
            ),
          ],
        ),

        SizedBox(
          height: sizedHeight,
        ),

        /// 4 5 6 -
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CalButton(
              text: "4",
              onPress: controller.numbClick,
            ),
            CalButton(
              text: "5",
              onPress: controller.numbClick,
            ),
            CalButton(
              text: "6",
              onPress: controller.numbClick,
            ),
            CalButton(
              widget: Container(
                child: Image.asset(
                  "assets/minus.png",
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              text: "-",
              textColor: Colors.deepOrangeAccent,
              onPress: controller.numbClick,
            ),
          ],
        ),

        SizedBox(
          height: sizedHeight,
        ),

        /// 1 2 3 +
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CalButton(
              text: "1",
              onPress: controller.numbClick,
            ),
            CalButton(
              text: "2",
              onPress: controller.numbClick,
            ),
            CalButton(
              text: "3",
              onPress: controller.numbClick,
            ),
            CalButton(
              widget: Container(
                child: Image.asset(
                  "assets/plus.png",
                  height: 26,
                  width: 26,
                  fit: BoxFit.cover,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              text: "+",
              textColor: Colors.deepOrangeAccent,
              onPress: controller.numbClick,
            ),
          ],
        ),

        SizedBox(
          height: sizedHeight,
        ),

        /// . 0 =
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CalButton(
              text: ".",
              onPress: controller.numbClick,
            ),
            CalButton(
              text: "0",
              onPress: controller.numbClick,
            ),
            CalButton(
              text: "=",
              height: 48,
              width: 148,
              backgroundColor: Colors.deepOrangeAccent,
              textColor: Colors.white,
              onPress: controller.Evaluate,
            ),
          ],
        ),
        SizedBox(
          height: size.height * .025,
        ),
      ],
    );
  }
}
