import 'dart:math';

import 'package:flutter/material.dart';

class RandomColor {
  List<Color> _colors = [
    Color(0xFFB05AFF),
    Color(0xFFff62b9),
    Color(0xFF4fcbe5),
    Color(0xFFfcc838),
    Color(0xFF5cb975),
    Color(0xFFf99040),
    Colors.blue,
  ];

  RandomColor._();

  static RandomColor randomColor = RandomColor._();

  Color get() {
    Random random = Random();
    int num = random.nextInt(_colors.length - 1);
    return _colors[num];
  }
}
