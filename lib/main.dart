import 'package:flutter/material.dart';
import 'package:imc_calc/core/app_colors.dart';
import 'package:imc_calc/pages/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('IMC Calculator'),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.foregroundColor,
          centerTitle: true,
        ),
        backgroundColor: AppColors.backgroundColor,
        body: HomePage(),
      ),
    );
  }
}
