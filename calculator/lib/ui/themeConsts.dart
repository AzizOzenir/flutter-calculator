import 'package:calculator/exports.dart';

ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade700,
    shadowColor: Colors.grey.shade900,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w300, fontSize: 12),
      bodyMedium: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w300, fontSize: 16),
      bodyLarge: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w300, fontSize: 20),
    ),
    iconTheme: const IconThemeData(color: Colors.white),);

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade200,
    shadowColor: Colors.grey.shade400,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w300, fontSize: 12),
      bodyMedium: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w300, fontSize: 16),
      bodyLarge: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w300, fontSize: 20),
    ),
    iconTheme: const IconThemeData(color: Colors.black),);

BorderRadius bradiusSoft = BorderRadius.circular(8);
BorderRadius bradiusSharp = BorderRadius.circular(16);
