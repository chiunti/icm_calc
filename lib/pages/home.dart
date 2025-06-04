import 'package:flutter/material.dart';
import 'package:imc_calc/components/gender_selector.dart';
import 'package:imc_calc/components/heigh_selector.dart';
import 'package:imc_calc/components/number_selector.dart';
import 'package:imc_calc/core/app_colors.dart';
import 'package:imc_calc/core/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Column(
        children: [
          GenderSelector(),
          HeighSelector(),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundComponent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: NumberSelector(title: 'Peso', unit: 'kg', value: 70),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundComponent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: NumberSelector(
                      title: 'Edad',
                      unit: 'años',
                      value: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/result');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Calcular', style: TextStyles.body),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
