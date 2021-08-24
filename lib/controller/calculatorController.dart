import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalController extends GetxController {
  var lastNumbClick = "".obs;
  var history = "".obs;
  var expression = "".obs;

  void numbClick(String text) {
    if (expression.value.endsWith("+") ||
        expression.value.endsWith("-") ||
        expression.value.endsWith("*") ||
        expression.value.endsWith("/") ||
        expression.value.endsWith("%")) {
      if (text == "+" ||
          text == "-" ||
          text == "/" ||
          text == "*" ||
          text == "%") {
        expression.value =
            expression.value.substring(0, expression.value.length - 1);
        expression.value += text;
      } else {
        expression.value += text;
      }
    } else
      expression.value += text;
  }

  void Clear(String text) {
    expression.value =
        expression.value.substring(0, expression.value.length - 1);
  }

  void allClear(String text) {
    expression.value = "";
    history.value = "";
  }

  void Evaluate(String text) {
    if (expression.value[0] == "+" ||
        expression.value[0] == "-" ||
        expression.value[0] == "*" ||
        expression.value[0] == "/" ||
        expression.value[0] == "%") {
      Get.snackbar("Error", "First character should be a number");
    } else if (expression.value.endsWith("+") ||
        expression.value.endsWith("-") ||
        expression.value.endsWith("*") ||
        expression.value.endsWith("/") ||
        expression.value.endsWith("%")) {
      Get.snackbar("Error", "Last character should be a number");
    } else {
      Parser p = Parser();
      Expression exp = p.parse(expression.value);
      ContextModel cm = ContextModel();
      double val = exp.evaluate(EvaluationType.REAL, cm);

      history.value = expression.value;
      expression.value = val.toString();
    }
  }
}
