import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

MaterialStateProperty<Color?> buildMaterialStateProperty({
  Color onPressColor = AppColors.primary,
  Color color = AppColors.primary100,
}) {
  return MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return onPressColor.withOpacity(0.8);
      } else if (states.contains(MaterialState.disabled)) {
        return Colors.grey;
      }
      return color;
    },
  );
}

MaterialStateProperty<double?> resolveIconSize({
  double? size,
}) {
  return MaterialStateProperty.resolveWith<double?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return size;
      }
      return size;
    },
  );
}
