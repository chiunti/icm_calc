import 'package:flutter/painting.dart';
import 'package:imc_calc/core/app_colors.dart';

class TextStyles {
  static TextStyle? title = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.foregroundColor,
  );

  static TextStyle? body = TextStyle(fontSize: 18, color: AppColors.foregroundColor);

  static TextStyle? caption = TextStyle(fontSize: 12, color: AppColors.foregroundColor);
}
