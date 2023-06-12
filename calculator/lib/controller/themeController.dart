import 'package:flutter/material.dart';

class ThemeController with ChangeNotifier {
  bool isDark = false;

  onModeChanged() {
    isDark = !isDark;
    notifyListeners();
  }
}
