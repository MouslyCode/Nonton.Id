import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static Color get background => const Color(0xFF1C1A29) as Color;
  static Color get second => const Color(0xFF2F2C44);
  static LinearGradient get accent => const LinearGradient(
      colors: [Color(0xff867ad2), Color.fromARGB(255, 105, 93, 182)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  static Color get white_op20 => const Color(0xFFFFFFFF).withOpacity(20);
  static Color get white_op60 => const Color(0xFFFFFFFF).withOpacity(60);
}
