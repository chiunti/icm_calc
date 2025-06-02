import 'package:flutter/material.dart';
import 'package:imc_calc/core/app_colors.dart';
import 'package:imc_calc/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // hombre
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 8.0,
              top: 16.0,
              bottom: 16.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = 'hombre';
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == 'hombre'
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.male, size: 150),
                      SizedBox(height: 10),
                      Text(
                        'Hombre',
                        style: TextStyles.body,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // mujer
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 16.0,
              top: 16.0,
              bottom: 16.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = 'mujer';
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == 'mujer'
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Icon(Icons.female, size: 150),
                      SizedBox(height: 10),
                      Text('Mujer', style: TextStyles.body),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
