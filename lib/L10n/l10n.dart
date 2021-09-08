
import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('kh'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'kh':
        return 'KH';
      case 'en':
      default:
        return '🇺🇸';
    }
  }
}