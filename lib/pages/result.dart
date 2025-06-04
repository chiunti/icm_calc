import 'package:flutter/material.dart';
import 'package:imc_calc/core/app_colors.dart';
import 'package:imc_calc/core/text_styles.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC Calculator'),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.foregroundColor,
        centerTitle: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Center(child: Text('Result Page', style: TextStyles.title)),
    );
  }
}
