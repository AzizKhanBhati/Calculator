import 'package:calculator/controller/calculatorController.dart';
import 'package:calculator/views/allbuttons.dart';
import 'package:calculator/views/currencyconverter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Calculator",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
            onTap: () {
              // Get.to(() => CurrencyConverter());
            },
            child: CircleAvatar(
              radius: 27,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                "assets/calculator.png",
                fit: BoxFit.cover,
                height: 27,
                width: 27,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 18),
                  width: size.width,
                  child: GetX<CalController>(
                      init: CalController(),
                      builder: (controller) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              controller.history.value,
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF545F61),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              controller.expression.value,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 32,
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
              Divider(
                height: 1,
              ),
              AllButtons()
            ],
          ),
        ),
      ),
    );
  }
}
