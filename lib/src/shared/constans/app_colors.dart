import 'dart:math';

import 'package:flutter/widgets.dart';

class AppColors {
  static const Color rosa = Color(0xFFF5487F);
  static const verde = Color.fromRGBO(88, 179, 104, 1);
  static const roxo = Color.fromRGBO(52, 48, 144, 1);
  static const ciano = Color.fromRGBO(68, 194, 253, 1);
  static const amarelo = Color.fromRGBO(250, 199, 54, 1);

  static const blueGradient = LinearGradient(
      colors: <Color>[ciano, roxo],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.0, 0.7],
      transform: GradientRotation((-34 * pi) / 180));
}
