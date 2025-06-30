import 'package:flutter/material.dart';

class Localization {
  static Future<void> init() async {}
  static List<LocalizationsDelegate<dynamic>> get delegates => [];
  static List<Locale> get supportedLocales => [const Locale('en'), const Locale('pt', 'BR')];
}
