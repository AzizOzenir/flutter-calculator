import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:intl/intl.dart';

class Controller with ChangeNotifier {
  String input = "";
  String result = "";
  String date = "";
  List isTapped = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  onDeleted(int i) {
    if (input.isNotEmpty) {
      input = input.substring(0, input.length - 1);
      isTapped[i] = true;
      notifyListeners();
    } else {}
    notifyListeners();
  }

  onTyped(String inp, int i) {
    if (input.length < 14) {
      input += inp;
      isTapped[i] = true;
      try {
        String finalProcess = input.replaceAll("x", "*");
        Parser p = Parser();
        Expression exp = p.parse(finalProcess);
        double eval = exp.evaluate(EvaluationType.REAL, ContextModel());
        result = eval.toStringAsFixed(0);
      } catch (e) {
        result = "";
      }
      notifyListeners();
    } else {
      Fluttertoast.showToast(
        msg: "Too long to typ",
        backgroundColor: Colors.grey.shade200,
        gravity: ToastGravity.TOP,
        textColor: Colors.black,
      );
    }
  }

  onCalculating(int i) {
    isTapped[i] = true;
    notifyListeners();
    try {
      String finalProcess = input.replaceAll("x", "*");
      Parser p = Parser();
      Expression exp = p.parse(finalProcess);
      double eval = exp.evaluate(EvaluationType.REAL, ContextModel());
      input = eval.toStringAsFixed(0);
      result = "";
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Calculation Problem occured",
        backgroundColor: const Color.fromARGB(255, 255, 17, 0),
        gravity: ToastGravity.TOP,
        textColor: Colors.black,
      );
    }

    notifyListeners();
  }

  onCleaned(int i) {
    input = "";
    result = "";
    isTapped[i] = true;
    notifyListeners();
  }

  onAnimationEnd(int i) {
    isTapped[i] = false;
    notifyListeners();
  }

  void dateGetter() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    date = formattedDate;
    notifyListeners();
  }
}
